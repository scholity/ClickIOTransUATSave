@isTest
private class TestILTInstructorCommunity {
    static testMethod void myUnitTest(){
    
         // Create community user record
        List<Profile> profList = [SELECT Id FROM Profile WHERE Name = 'PHSS-Partner-Community Plus Login' LIMIT 1];
        String profileId;
        
        profileId = profList[0].Id;
        
        String fileData = 'Name'+','+'LastName'+','+'Email'+','+'Phonenumber'+''+'test1'+','+'t'+','+'test1t@cfr.com'+','+'8888888888';
        String fileDateBase64 = EncodingUtil.base64Encode(Blob.valueOf(fileData));
        String mimetype = 'text/csv;base64,';
        String fileName = 'SampleTest.csv';
        String finalFileData = mimetype+fileDateBase64;


        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Bucket Account').getRecordTypeId();
         
        //Bucket Custom settings
        Bucket_Account_Settings__c bas = Bucket_Account_Settings__c.getOrgDefaults();
        bas.Bucket_Account_Owner_ID__c = UserInfo.getUserID();
        bas.Bucket_Account_RecordTypeID__c = recordTypeId;
        bas.Default_Bucket_Name__c = 'Bucket Account';
        bas.Maximum_Size_of_Bucket__c = 5000;
        insert bas;
        
       Profile profileIdnew = [SELECT Id FROM Profile WHERE Name = 'Customer Community User' LIMIT 1];
        
        
        Account a = new Account();
        a.Name='SalesforcetestOrg';
        a.BillingStreet='24 Willie Mays Plaza';
        a.BillingCity='San Francisco';
        a.BillingState='California';
        a.BillingPostalCode='94017';
        a.BillingCountry='USA';
        a.Phone='9934200234';
        //a.email='Salesforceredcross@cross.com';
        insert a;

        Contact c = new Contact();
        c.FirstName = 'New';
        c.LastName = 'Tetst';
        c.Email = 'Priyap@gmail.com';
        c.Account =a;
        insert c;
        
         Account acc = new Account();
            acc.Name = 'TestAccount';
            acc.BillingStreet = '24 Willie Mays Plaza';
            acc.BillingCity = 'San Francisco';
            acc.BillingState = 'California';
            acc.BillingPostalCode = '94017';
            acc.BillingCountry = 'USA';
            acc.Phone = '9876543210';
            insert acc;
    
            Contact con = new Contact();
            con.FirstName = 'Contact';
            con.LastName = 'Test';
            con.Email = 'testCon@gmail.com';
            con.Account = acc;
            insert con;
        
        User usr = new User(LastName = 'LIVESTON',
                           FirstName='JASON',
                           Alias = 'jliv',
                           Email = 'jason.liveston@asdf.com',
                           Username = 'jason.liveston@asdf.com',
                           ProfileId = profileIdnew.id,
                           ContactId = c.id,
                           TimeZoneSidKey = 'GMT',
                           LanguageLocaleKey = 'en_US',
                           EmailEncodingKey = 'UTF-8',
                           LocaleSidKey = 'en_US'
                           );
        insert usr;
        
        User partnerUser = new User(LastName = 'Test',
                                     FirstName = 'User',
                                     Alias = 'testU',
                                     Email = 'testCon@gmail.com',
                                     Username = 'testUser@redCross.com',
                                     ProfileId = profileId,
                                     ContactId = con.id,
                                     TimeZoneSidKey = 'GMT',
                                     LanguageLocaleKey = 'en_US',
                                     EmailEncodingKey = 'UTF-8',
                                     LocaleSidKey = 'en_US'
                                    );
            insert partnerUser;
        
        redwing__Instructor__c redwingInstructor = new redwing__Instructor__c();
        redwingInstructor.redwing__User__c = UserInfo.getUserId();

        insert redwingInstructor;
        
        /*
        sked__Resource__c objResource2 = new sked__Resource__c();
        objResource2.Name = 'Testnew';
        objResource2.sked__Is_Active__c = true;
        objResource2.sked__Resource_Type__c = 'Person';
        objResource2.sked__Category__c = 'Instructor';
        objResource2.sked__User__c = usr.id;
        insert objResource2;
        */

        redwing__Learning__c learning = new redwing__Learning__c();
        learning.Name = 'Test learning';
        learning.redwing__Published__c = true;
        learning.RecordTypeId = Schema.SObjectType.redwing__Learning__c.getRecordTypeInfosByName().get('ILT Event').getRecordTypeId();
        insert learning;
        
        redwing__Learning__c learning2 = new redwing__Learning__c();
        learning.Name = 'Test learning 2';
        learning.redwing__Published__c = true;
        learning.RecordTypeId = Schema.SObjectType.redwing__Learning__c.getRecordTypeInfosByName().get('ILT Event').getRecordTypeId();
        insert learning2;

        redwing__ILT_Event__c ilEvent = new redwing__ILT_Event__c();
        ilEvent.redwing__Learning__c = learning.Id;
        insert ilEvent;

        sked__Location__c objLocation = new sked__Location__c();
        objLocation.Name = 'Test';
        objLocation.sked__Type__c = 'Community';
        objLocation.sked__Address__c = '401 S Monroe St, Little Rock, AR, 72206';
        insert objLocation;

        redwing__ILT_Location__c redwingLocation = [Select Id From redwing__ILT_Location__c Where Skedulo_Location_External__c = :objLocation.Id Limit 1][0];

        redwing__Training_Plan__c lPlan = new redwing__Training_Plan__c();
        lPlan.Name = 'Test Plan';
        insert lPlan;
        
        redwing__Training_Plan_Section__c lPlanSection = new redwing__Training_Plan_Section__c();
        lPlanSection.Name = 'Test Plan Section';
        lPlanSection.redwing__Training_Plan__c = lPlan.Id;
        insert lPlanSection;

        redwing__Training_Plan_Section_Item__c lPlanSectionItem = new redwing__Training_Plan_Section_Item__c();
        lPlanSectionItem.redwing__Learning__c = learning.Id;
        lPlanSectionItem.redwing__Training_Plan_Section__c = lPlanSection.Id;
        insert lPlanSectionItem;

        sked__Region__c region = new sked__Region__c();
        region.Name = 'Test Region';
        region.sked__Timezone__c = 'Indian/Coscos';
        insert region;
        /* Student Test Data*/
        //Create ILT Class Record
        Redwing__ILT_Class__c clsRecord = new Redwing__ILT_Class__c();
        clsRecord.Skedulo_Account__c = a.id;
        clsRecord.redwing__End_Date__c = Date.Parse('12/19/2018');
        clsRecord.redwing__End_Time__c= '13:00';
        clsRecord.redwing__Start_Date__c = Date.Parse('12/19/2018');// Assuming Start date = End date
        clsRecord.redwing__Start_Time__c = '12:00';
        clsRecord.Name = 'Test';
        clsRecord.redwing__Learning__c = learning.Id;
        insert clsRecord;


        //Create ILT Session record
        redwing__ILT_Session__c sessionRecord = new redwing__ILT_Session__c();
        sessionRecord.redwing__ILT_Class__c = clsRecord.Id;
        sessionRecord.Skedulo_Account__c = a.id;
        sessionRecord.Skedulo_Address__c = objLocation.id;
        //End Time is defaulted to "20:00"
        sessionRecord.redwing__End_Time__c = '20:00';
        sessionRecord.redwing__Date__c = Date.Parse('12/19/2018');
        //Start Time is defaulted to "08:00"
        sessionRecord.redwing__Start_Time__c = '08:00';
        insert sessionRecord; 

        
        
        redwing__Training_Plan_Assignment__c planAssignment = new redwing__Training_Plan_Assignment__c();
        planAssignment.redwing__Training_Plan__c = lPlan.id; // Retrieved learning plan id based on the course selected in page 1
        //planAssignment.redwing__Contact__r = con;
        planAssignment.redwing__User__c = UserInfo.getUserId();
        planAssignment.External_Id__c = 'priyalakshmi.pp@gmail.com';
        insert planAssignment;

        redwing__Learning_Assignment__c learningAssignment = new redwing__Learning_Assignment__c();
        //learningAssignment.redwing__Contact__c = planAssignment.redwing__Contact__c;
        learningAssignment.redwing__Learning__c = learning.id; // Retrieve learning id from page 1
        learningAssignment.External_Id__c = 'priyalakshmi.pp@gmail.com'; //Can be chaged if needed
        learningAssignment.redwing__Training_Plan__c = lPlan.Id;
        insert learningAssignment;

        

        redwing__Learning_Assignment__c learningAssignmentupdate = new redwing__Learning_Assignment__c();
        learningAssignmentupdate.id=learningAssignment.id;
        learningAssignmentupdate.redwing__Evaluation_Result__c = 'Passed';
        learningAssignmentupdate.Grade_Reason__c = 'Reason 2'; // Retrieve learning id from page 1
        learningAssignmentupdate.Grade_Additional_Info__c = 'Reason 2'; //Can be chaged if needed
        update learningAssignmentupdate;
        
        redwing__Training_Plan_Section_Assignment__c rp = new redwing__Training_Plan_Section_Assignment__c();
        rp.redwing__User__c = planAssignment.redwing__User__c;
        rp.redwing__Training_Plan_Section__c = lPlanSection.id;
        insert rp;
        
        redwing__Achievement_Category__c rac = new redwing__Achievement_Category__c();
        rac.name = 'Skill';
        insert rac;
        
        redwing__Achievement__c ra = new redwing__Achievement__c();
        ra.redwing__Achievement_Category__c = rac.id;
        insert ra;
        
        redwing__Training_Plan_Achievement__c tpa = new redwing__Training_Plan_Achievement__c();
        tpa.redwing__Achievement__c = ra.id;
        tpa.redwing__Training_Plan__c = lPlan.Id;
        insert tpa;

        //Creating Roster Record
        redwing__ILT_Roster__c objRoster = new redwing__ILT_Roster__c();
        objRoster.redwing__ILT_Class__c = clsRecord.id;
        objRoster.redwing__ILT_Session__c = sessionRecord.id;
        objRoster.redwing__User__c = planAssignment.redwing__User__c;
        objRoster.redwing__Learning_Assignment__c = learningAssignmentupdate.id;
        insert objRoster;
        
                     
        Voucher__c  v = new Voucher__c();
        v.ILT_Class__c = clsRecord.id;
        v.Learning_Plan__c = lPlan.Id;
        v.Status__c = 'Claimed';
        insert v;

        v = [select Id, Voucher_Claim__c from Voucher__c where id = : v.id]; 
        /*Student Test Data*/


        String json = '{'+
                '   "ClassDetails": {'+
                '   "Account": "'+a.id+'",'+
                '   "Course": "'+lPlan.Id+'",'+
                '   "StartDate": "12/19/2018",'+                
                '   "EndDate": "12/19/2018",'+
                '   "Students": "10",'+
                '   "Voucher": "2",'+
                '   "Address1": "no 4",'+
                '   "Address2": "Western",'+
                '   "City": "chei",'+
                '   "State": "TN",'+
                '   "Zip": "88888",'+
                '   "Address": "",'+
                //'   "Instructor1": "'+redwingInstructor.Id+'",'+
            	'   "Instructor1": "'+UserInfo.getUserId()+'",'+                

//                '   "Instructor1": "'+objResource.id+'",'+
                '   "Instructor2": "",'+                
//                '   "Instructor2": "'+usr.Id+'",'+
                '   "Location": "'+redwingLocation.Id+'"'+
//                '   "Location": "'+objLocation.id+'"'+
                '    }'+
                '}';
System.debug('JSON==='+json);
        String json1 = '{'+
                '    "Students": ['+
                '        {'+
                '               "FirstName": "Rajii",'+
                '               "LastName": "R",'+
                '               "Email": "Rajissfdc@gmail.com",'+
                '               "Grade": "P/F",'+
                '               "Fail Reason": "fail reason",'+
                '               "AdditionalInfo": "additional info"'+
                '       },'+
                ''+
                '        {'+
                '               "FirstName": "New",'+
                '               "LastName": "Tetst",'+
                '               "Email": "Ashwiisf@gmail.com",'+
                '               "Phone": "(999) 999-9999",'+
                '               "Grade": "P/F",'+
                '               "voucherid":"",'+
                '               "Fail Reason": "fail reason",'+
                '               "AdditionalInfo": "additional info"'+
                ''+
                '   }'+
                '   ]'+
                '}';

        String json2 = '{'+
                '    "Students": ['+
                '        {'+
                '               "Roster": "'+objRoster.id+'",'+
                '               "Grade": "Passed",'+
                '               "Reason": "Passed with Distinction",'+
                '               "AdditionalInfo": "Additional info"'+
                '       }'+
                '   ]'+
                '}';
        Test.startTest();
        ILTInstructorCommunity.invokeMethodswithboolean(json,json1,true);
        System.runAs(partnerUser) {

    
        List<PermissionSet> permSet = [Select Id,Name From PermissionSet Where Name = 'LMS_External_User'];
                    
                PermissionSetAssignment psa = new PermissionSetAssignment ();
                psa.PermissionSetId = permSet[0].Id;
                psa.AssigneeId = partnerUser.Id;
                insert psa;
        try {    
        Boolean closeClass = true;
        ILTInstructorCommunity.savechunk(fileDateBase64,mimetype,false);
        ILTInstructorCommunity.insertVouchers(10,clsRecord.id,lPlan.id);
        ILTInstructorCommunity.validateVourcher(v.id,'JASON','LIVESTON');
        ILTInstructorCommunity.initializeStudents(3);
        ILTInstructorCommunity.fetchUser();
        ILTInstructorCommunity.getAccountList();
        ILTInstructorCommunity.fetchLookupValues('Raji','Account');
        ILTInstructorCommunity.fetchLookupValues('Priya','Course');
        ILTInstructorCommunity.assigngrades(json2, 'Supplemental Info', closeClass);
        ILTInstructorCommunity.courseInfo(clsRecord.id);
        ILTInstructorCommunity.UserExisting('Rajii','R','Ashwiisf@gmail.com');
        }catch (Exception e){}
        }
        Test.stopTest();
        }
        static testMethod void addstudentstest() {
        
        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Bucket Account').getRecordTypeId();
         
        //Bucket Custom settings
        Bucket_Account_Settings__c bas = Bucket_Account_Settings__c.getOrgDefaults();
        bas.Bucket_Account_Owner_ID__c = UserInfo.getUserID();
        bas.Bucket_Account_RecordTypeID__c = recordTypeId;
        bas.Default_Bucket_Name__c = 'Bucket Account';
        bas.Maximum_Size_of_Bucket__c = 5000;
        insert bas;
        
        Profile profileId = [SELECT Id FROM Profile WHERE Name = 'Customer Community User' LIMIT 1];
        
        Account a2 = new Account();
        a2.Name='SalesforcetestOrg';
        a2.BillingStreet='24 Willie Mays Plaza';
        a2.BillingCity='San Francisco';
        a2.BillingState='California';
        a2.BillingPostalCode='94017';
        a2.BillingCountry='USA';
        a2.Phone='9934200234';
        //a.email='Salesforceredcross@cross.com';
        insert a2;

        Contact c2 = new Contact();
        c2.FirstName = 'New';
        c2.LastName = 'Tetst';
        c2.Email = 'Priyap@gmail.com';
        c2.Account =a2;
        insert c2;
        
        redwing__Learning__c learning2 = new redwing__Learning__c();
        learning2.Name = 'Test learning 2';
        learning2.redwing__Published__c = true;
        learning2.RecordTypeId = Schema.SObjectType.redwing__Learning__c.getRecordTypeInfosByName().get('ILT Event').getRecordTypeId();
        insert learning2;
        
        redwing__Training_Plan__c lPlan2 = new redwing__Training_Plan__c();
        lPlan2.Name = 'Plan2';
        insert lPlan2;
        
        redwing__Training_Plan_Section__c lPlanSection2 = new redwing__Training_Plan_Section__c();
        lPlanSection2.Name = 'Test Plan Section';
        lPlanSection2.redwing__Training_Plan__c = lPlan2.Id;
        insert lPlanSection2;

        redwing__Training_Plan_Section_Item__c lPlanSectionItem2 = new redwing__Training_Plan_Section_Item__c();
        lPlanSectionItem2.redwing__Learning__c = learning2.Id;
        lPlanSectionItem2.redwing__Training_Plan_Section__c = lPlanSection2.Id;
        insert lPlanSectionItem2;

        redwing__ILT_Event__c ilEvent2 = new redwing__ILT_Event__c();
        ilEvent2.redwing__Learning__c = learning2.Id;
        insert ilEvent2;
         //Create ILT Class Record
        Redwing__ILT_Class__c clsRecord2 = new Redwing__ILT_Class__c();
        clsRecord2.Skedulo_Account__c = a2.id;
        clsRecord2.redwing__End_Date__c = Date.Parse('12/19/2018');
        clsRecord2.redwing__End_Time__c= '13:00';
        clsRecord2.redwing__Start_Date__c = Date.Parse('12/19/2018');// Assuming Start date = End date
        clsRecord2.redwing__Start_Time__c = '12:00';
        clsRecord2.Name = 'Test';
        clsRecord2.redwing__Learning__c = learning2.Id;
        insert clsRecord2;
        
        redwing__Learning_Assignment__c learningAssignmentnew = new redwing__Learning_Assignment__c();
        //learningAssignment.redwing__Contact__c = planAssignment.redwing__Contact__c;
        learningAssignmentnew.redwing__Learning__c = learning2.id; // Retrieve learning id from page 1
        learningAssignmentnew.External_Id__c = 'priyalakshmi.pr@gmail.com'; //Can be chaged if needed
        learningAssignmentnew.redwing__Training_Plan__c = lPlan2.Id;
        insert learningAssignmentnew;

        
        Voucher__c  v = new Voucher__c();
        v.ILT_Class__c = clsRecord2.id;
        v.Learning_Plan__c = lPlan2.Id;
        v.Status__c = 'Claimed';
        insert v;
    
        Voucher__c objVoucher = [Select Id from Voucher__c limit 1];
        String json4 = '{'+
                '    "Students": ['+
                '        {'+
                '               "FirstName": "New",'+
                '               "LastName": "learn3",'+
                '               "Email": "testlearn3@gmail.com",'+
                '               "Grade": "",'+
                '               "Grade": "",'+
                '               "voucherid" : "'+v.Id+'",'+
                '               "Fail Reason": "reason 6",'+
                '               "AdditionalInfo": "additional info"'+
                '       },'+
                ''+
                '        {'+
                '               "FirstName": "New1",'+
                '               "LastName": "t",'+
                '               "Email": "testlearn4@gmail.com",'+
                '               "Phone": "(999) 999-9999",'+
                '               "Grade": "P/F",'+
                '               "Fail Reason": "reason 6",'+
                '               "AdditionalInfo": "additional info"'+
                ''+
                '   }'+
                '   ]'+
                '}';
        system.debug(json4);
        try {
        ILTInstructorCommunity.addStudents(json4);
        //ILTInstructorCommunity.enrollStudents(json4);
        }catch (Exception e){}
           
        }
    
    
    







}