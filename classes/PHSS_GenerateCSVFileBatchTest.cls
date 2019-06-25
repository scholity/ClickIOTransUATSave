/************************************************************************************************************************************
** Author: Salesforce Services
** Description: Tests for PHSS_GenerateCSVFileBatch and PHSS_GenerateCSVFileBatchScheduler
************************************************************************************************************************************/

@isTest
public class PHSS_GenerateCSVFileBatchTest {
    public static Opportunity testOpportunity;
    public static Map<String, Object> testData;
    public static List<ccrz__E_Product__c> products;
    public static ccrz__E_Cart__c testCart;

    @testSetup static void setup() {
        // Create portal account owner
        User accountOwner = new User(
            UserRoleId = [Select Id From UserRole Where PortalType = 'None' LIMIT 1].Id,
            ProfileId = [SELECT Id FROM Profile WHERE Name='System Administrator' LIMIT 1].Id,
            FirstName = 'first999',
            LastName = 'last999',
            Email = 'test999@testingARC.com',
            Username = 'test999@testingARC.com' + System.currentTimeMillis(),
            CompanyName = 'ARC999',
            Title = 'title999',
            Alias = 'test999',
            TimeZoneSidKey = 'America/Los_Angeles',
            EmailEncodingKey = 'UTF-8', 
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US'
        );
        insert accountOwner; 
        
        Bucket_Account_Settings__c bas = new Bucket_Account_Settings__c();
        bas.Bucket_Account_Owner_ID__c ='005d0000001WOeV';
        bas.Bucket_Account_RecordTypeID__c = '012d000000098Wt';
        bas.Default_Bucket_Name__c = 'Bucket Account';
        bas.Maximum_Size_of_Bucket__c = 5000;
        System.runAs(accountOwner) {
            insert bas;  
            testData = phss_cc_TestDataFactory.setupAccountAndProducts();
            products = (List<ccrz__E_Product__c>) testData.get(phss_cc_TestDataFactory.TEST_PRODUCTS);
            Account testAccount = (Account) testData.get(phss_cc_TestDataFactory.TEST_ACCOUNT);
            testOpportunity = phss_cc_TestDataFactory.createInsertTestOpportunity(testAccount);
            List<ccrz__E_Cart__c> testCarts = phss_cc_TestDataFactory.createInsertCartAndCartItems(1, testData, testOpportunity.Id);
            Map<String,Object> testLearningData = phss_cc_TestDataFactory.createInsertTestLearningObjects();
            redwing__ILT_Class__c testILTClass = (redwing__ILT_Class__c) testLearningData.get(phss_cc_TestDataFactory.TEST_ILT_CLASS);

            testCart = testCarts[0];
            phss_cc_TestDataFactory.createInsertStoredPayment(1, testOpportunity);
            Map<String, Object> newPO = new Map<String, Object>{
                phss_cc_OrderUtil.NEW_PO_NAME_KEY => 'Test PO',
                phss_cc_OrderUtil.NEW_PO_AMOUNT_KEY => '1000',
                //phss_cc_OrderUtil.NEW_PO_START_DATE_KEY => String.valueOf(Date.today()),
            	//phss_cc_OrderUtil.NEW_PO_END_DATE_KEY => String.valueOf(Date.today()+5),
                phss_cc_OrderUtil.NEW_PO_DOSAVE_KEY => true
            };
            Map<String, Object> placeOrderResult = phss_cc_CartController.placeOrderOnCartPO(testOpportunity.Id, testCart.ccrz__EncryptedId__c, newPO);
            Map<String, Object> placeOrderResultExistingPO = phss_cc_OrderUtil.placeOrderOnCartPO(testOpportunity.Id, testCart.ccrz__EncryptedId__c, newPO);
            List<ccrz__E_Order__c> orderList = new List<ccrz__E_Order__c>([SELECT Id FROM ccrz__E_Order__c]);
            List<ccrz__E_OrderItem__c> orderItemList = new List<ccrz__E_OrderItem__c>([SELECT Id FROM ccrz__E_OrderItem__c WHERE ccrz__Order__r.Id =:orderList[0].Id]); 
            for(ccrz__E_Order__c o: orderList) {
                o.ccrz__PONumber__c = '0123456789';
            }
            //update orderList;
            List<ccrz__E_TransactionPayment__c> tpay = new List<ccrz__E_TransactionPayment__c>([SELECT Id FROM ccrz__E_TransactionPayment__c WHERE ccrz__CCOrder__c=:orderList[0].Id]);
            for(ccrz__E_OrderItem__c oi: orderItemList) {
                oi.ILT_Class__c = testILTClass.Id;
                oi.Payment_Category__c = '';
                oi.Unit_Code__c = '00000';
                oi.TS_LOC__c = '0000';
            }
            update orderItemList;
            // Create Instructor
            redwing__ILT_Instructor__c instructor = new redwing__ILT_Instructor__c();
            instructor.redwing__ILT_Class__c=testILTClass.Id;
            instructor.redwing__Instructor__c=accountOwner.Id;
            instructor.redwing__Primary__c=true;
            insert instructor;            
            // Create Fulfillment
            Fulfillment__c f = new Fulfillment__c(Type__c='Invoice',Status__c='Open',Order__c=orderList[0].Id,CC_Transaction_Payment__c=tpay[0].Id);
            insert f;
            // Create Fulfillment Item
            List<Fulfillment_Item__c> fiList = new List<Fulfillment_Item__c>();
            fiList.add(new Fulfillment_Item__c(Type__c='Training',Status__c='Ready',Fulfillment__c=f.Id,Order__c=orderList[0].Id,Order_Item__c=orderItemList[0].Id,CC_Product__c=products[0].Id,ILT_Class__c=testILTClass.Id,Quantity__c=1,Supplemental_Information__c='Test123'));            
            fiList.add(new Fulfillment_Item__c(Type__c='Training',Status__c='Ready',Fulfillment__c=f.Id,Order__c=orderList[0].Id,Order_Item__c=orderItemList[0].Id,CC_Product__c=products[0].Id));
            insert fiList;
            // Create Billing Contact
            Contact testContact = new Contact(FirstName='FirstName1', LastName='LastName1',AccountId=testAccount.Id, Phone='111-222-5555', Email='test@email.com');
            insert testContact;
            // Update Account
            testAccount.SABA_LMS_Code__c = '0123456789';
            testAccount.Payment_Terms__c = 'NET 30';
            testAccount.Special_Invoicing__c = 'DO NOT MAIL';
            testAccount.Saba_Id__c = '0123456789';
            testAccount.Billing_Contact__c = testContact.Id;
            update testAccount;
        }   
    }
    
    static testMethod void testScheduledJob() {
        Test.startTest();     
        PHSS_GenerateCSVFileBatch csvFileBatch = new PHSS_GenerateCSVFileBatch();
        Id batchId = Database.executeBatch(csvFileBatch,100);
        Test.stopTest();
    } 

}