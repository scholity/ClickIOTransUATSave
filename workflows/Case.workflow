<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AR_Exception_case_has_been_closed</fullName>
        <description>AR Exception case has been closed</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Invoicing/AR_Exception_Closed_Case_Notification</template>
    </alerts>
    <alerts>
        <fullName>AR_Exception_case_has_been_closed_Test</fullName>
        <description>AR Exception case has been closed</description>
        <protected>false</protected>
        <recipients>
            <recipient>ivo.dimov@redcross.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Invoicing/AR_Exception_Closed_Case_Notification</template>
    </alerts>
    <alerts>
        <fullName>Billing_Web_Request_Customer_Notification1</fullName>
        <description>Billing Web Request Internal Notification</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>TSC_Auto_Reply_Templates/Case_Auto_Reply</template>
    </alerts>
    <alerts>
        <fullName>Case_Denied</fullName>
        <description>Case Denied</description>
        <protected>false</protected>
        <recipients>
            <field>Billing_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Red_Cross_Store_PO/PO_Denied</template>
    </alerts>
    <alerts>
        <fullName>Case_with_High_Priority_set_Notification</fullName>
        <description>Case with High Priority set Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>sfdcsudhir@redcross.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All/Case_with_High_priority</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_for_No_priority_Email</fullName>
        <description>Email Alert for No priority Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>sfdcsudhir@redcross.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>All/Case_with_No_priority</template>
    </alerts>
    <alerts>
        <fullName>Send_Closed_Case_Survey</fullName>
        <description>Send Closed Case Survey</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Survey_Templates/Closed_Case_Survey_Invitation</template>
    </alerts>
    <alerts>
        <fullName>Send_Customer_Notification_for_Invoicing_moved_from_Adjustment_to_Ready_to_Close</fullName>
        <description>Send Customer Notification for Invoicing moved from Adjustment to Ready to Close</description>
        <protected>false</protected>
        <recipients>
            <field>ContactId</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>adjustment@redcross.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Refund_Invoice_Corrections/Invoice_Dispute_Resolved_Auto</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_Customer_When_Case_Closed</fullName>
        <description>Send Email to Customer When Case Closed</description>
        <protected>false</protected>
        <recipients>
            <field>ContactId</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>All/Customer_Case_Closed</template>
    </alerts>
    <alerts>
        <fullName>Social_New_Case_Notification</fullName>
        <description>Social- New Case Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>Social_Agents</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Social_New_Case</template>
    </alerts>
    <alerts>
        <fullName>This_is_to_send_email_alert_to_customer_when_case_record_is_sent_to_CFS</fullName>
        <description>This is to send email alert to customer when case record is sent to CFS</description>
        <protected>false</protected>
        <recipients>
            <field>Billing_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Red_Cross_Store_PO/Case_sent_to_CFS</template>
    </alerts>
    <alerts>
        <fullName>Web_to_case_Created</fullName>
        <description>Web to case Created</description>
        <protected>false</protected>
        <recipients>
            <field>Billing_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>External_LOGIN_EMAIL__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Red_Cross_Store_PO/Web_to_case_Template_Case_Object</template>
    </alerts>
    <alerts>
        <fullName>X20_day_owner_notification_on_invoicing_cases</fullName>
        <description>20 day owner notification on invoicing cases</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Invoicing/X20_day_Invoicing_case_notification</template>
    </alerts>
    <alerts>
        <fullName>X20_day_owner_notification_on_invoicing_cases_Test</fullName>
        <description>20 day owner notification on invoicing cases</description>
        <protected>false</protected>
        <recipients>
            <recipient>ivo.dimov@redcross.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Invoicing/X20_day_Invoicing_case_notification</template>
    </alerts>
    <alerts>
        <fullName>automatic_email_associated_with_RCSPO_Case_customers</fullName>
        <description>automatic email associated with RCSPO Case customers</description>
        <protected>false</protected>
        <recipients>
            <field>Billing_Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@redcross.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Red_Cross_Store_PO/PO_Approval</template>
    </alerts>
    <fieldUpdates>
        <fullName>Billing_Web_Request_Other</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Other</literalValue>
        <name>Billing Web Request Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_Web_Request_Request_Receipt_Orde</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Request Receipt/Order Detail</literalValue>
        <name>Billing Web Request Request Receipt/Orde</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_Web_Request_Special_Invoicing_Cu</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Special Invoicing</literalValue>
        <name>Billing Web Request Special Invoicing Cu</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_Web_Request_Vendor_Forms</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Vendor Forms</literalValue>
        <name>Billing Web Request Vendor Forms</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Billing_Web_Request_Wrong_Org</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Wrong Organization</literalValue>
        <name>Billing Web Request Wrong Org</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CRE</fullName>
        <description>Moves new CRE cases to FIN Billing queue</description>
        <field>OwnerId</field>
        <lookupValue>CCO_Specialist</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>CRE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Origin_Postal_Mail</fullName>
        <field>Origin</field>
        <literalValue>Postal Mail</literalValue>
        <name>Case Origin - Postal Mail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_BOS2</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner BOS</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_BOS_Sales</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner BOS Sales</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Bos1</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Bos1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_CustOps</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner CustOps</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE1</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE2</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE3</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE4</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE5</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE6</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE7</fullName>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE9</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COEBill</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COEBill</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_6</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_Billing</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_Billing1</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_Billing5</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_Billing6</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Finance_COE_Billing7</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Finance COE Billing7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Update_FIN_Billing</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Update FIN Billing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Priority_Update_High</fullName>
        <description>This will update the priority of the case to High when the workflow criteria is met.</description>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Case Priority Update - High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_ARC_Support_Team</fullName>
        <field>OwnerId</field>
        <lookupValue>ARC_Support_Team</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - ARC Support Team</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_CCO_Specialist</fullName>
        <field>OwnerId</field>
        <lookupValue>CCO_Specialist</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - CCO Specialist</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_CST_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>CST_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - CST Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Certificate_Support</fullName>
        <field>OwnerId</field>
        <lookupValue>Certificate_Support</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Certificate Support</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Course_Records</fullName>
        <field>OwnerId</field>
        <lookupValue>Course_Records</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Course Records</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Instructor_Support</fullName>
        <field>OwnerId</field>
        <lookupValue>Instructor_Support</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Instructor Support</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Outbound</fullName>
        <field>OwnerId</field>
        <lookupValue>Outbound_Group_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Outbound</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_RDC_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>RDC_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - RDC Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Reg_Support_Queue</fullName>
        <description>This field update will change the case owner to the Registration Support Queue</description>
        <field>OwnerId</field>
        <lookupValue>Registration_Support_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Reg Support Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_1</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_1_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 1</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_2</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_2_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 2</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_3</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_3_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 3</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_4</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_4_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 4</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_5</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_5_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 5</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_6</fullName>
        <description>This will update the case owner to the service delivery director based on the state of the contact</description>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_6_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 6</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Queue_Update_Sector_7</fullName>
        <field>OwnerId</field>
        <lookupValue>Service_Delivery_Sector_7_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Queue Update - Sector 7</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_REached_Age_Limit</fullName>
        <field>Primary_Close_Reason__c</field>
        <literalValue>Case Reached Age Limit</literalValue>
        <name>Case REached Age Limit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Record_Type_Change_Sales_Case</fullName>
        <description>This field update will change the record type to Read Only Sales Case</description>
        <field>RecordTypeId</field>
        <lookupValue>Sales_Case_Read_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case Record Type Change - Sales Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Record_Type_Change_Service_Case</fullName>
        <description>This field update will change the record type to Read Only for service cases.</description>
        <field>RecordTypeId</field>
        <lookupValue>Service_Case_Read_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case Record Type Change - Service Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_1</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_1_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_2</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_2_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 2</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_3</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_3_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 3</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_4</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_4_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 4</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_5</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_5_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 5</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_6</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_6_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 6</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Sales_Dir_Queue_Update_Sector_7</fullName>
        <field>OwnerId</field>
        <lookupValue>Sales_Director_Sector_7_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Sales Dir Queue Update - Sector 7</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Status_Update_Closed</fullName>
        <field>Status</field>
        <literalValue>Closed - Unresolved</literalValue>
        <name>Case Status Update - Closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Update_Follow_Up</fullName>
        <field>Status</field>
        <literalValue>Agent Follow Up</literalValue>
        <name>Case Update - Follow Up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_to_temp_queue</fullName>
        <description>Changes owner to Temp queue when subject is 	
[Postmaster] Email Delivery Failure</description>
        <field>OwnerId</field>
        <lookupValue>Temp_to_be_deleted</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case to temp queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_with_High_priority_Updates</fullName>
        <field>Priority</field>
        <literalValue>Medium</literalValue>
        <name>Case with High priority Updates</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Case_Record_Type_to_Sales</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Sales_Case</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Case Record Type to Sales</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Status_to_New_Assigned</fullName>
        <field>Status</field>
        <literalValue>New - Assigned</literalValue>
        <name>Change Status to New Assigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Status_to_New_Assigned_for_Invoic</fullName>
        <field>Status</field>
        <literalValue>New - Assigned</literalValue>
        <name>Change Status to New Assigned for Invoic</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_owner_to_LTPon_RCO_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>LTP_on_RCO</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change owner to LTPon RCO Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_Invoicing</fullName>
        <field>Status</field>
        <literalValue>Closed - Invoicing</literalValue>
        <name>Closed-Invoicing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_Invoicing_Test</fullName>
        <field>Status</field>
        <literalValue>Closed - Invoicing</literalValue>
        <name>Closed-Invoicing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Postal_Code_on_Case</fullName>
        <description>This field update is to bring the contact postal code to the case from the contact record to assist in the automation of open span</description>
        <field>Contact_Postal_Code__c</field>
        <formula>Contact.MailingPostalCode</formula>
        <name>Contact Postal Code on Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Customer_Notif_Of_Resolution_Checkbox</fullName>
        <field>Customer_Notified_of_Resolution__c</field>
        <literalValue>1</literalValue>
        <name>Customer Notif. Of Resolution Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Customer_Notif_Of_Resolution_Timestamp</fullName>
        <field>Customer_Notified_of_Resolution_On_API__c</field>
        <formula>NOW()</formula>
        <name>Customer Notif. Of Resolution Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IC_Update_Origin</fullName>
        <description>Update case origin to equal community</description>
        <field>Origin</field>
        <literalValue>Community</literalValue>
        <name>IC Update Origin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype</fullName>
        <description>When a new case is created from Billing Web Request Invoice Case Sub type needs to be update.</description>
        <field>Dispute_Issue__c</field>
        <literalValue>Customer Account Maintenance</literalValue>
        <name>Invoice Case Subtype</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype1</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>AR Exception</literalValue>
        <name>Invoice Case Subtype1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype10</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Request Copy of Statement/Invoice</literalValue>
        <name>Invoice Case Subtype10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype12</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>ACH Request</literalValue>
        <name>Invoice Case Subtype12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype2</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Duplicate Invoice</literalValue>
        <name>Invoice Case Subtype2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype3</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Misapplied Payment</literalValue>
        <name>Invoice Case Subtype3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype4</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Special Invoicing</literalValue>
        <name>Invoice Case Subtype4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype5</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Missing Payment</literalValue>
        <name>Invoice Case Subtype5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype6</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Pay Invoice</literalValue>
        <name>Invoice Case Subtype6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype7</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Price</literalValue>
        <name>Invoice Case Subtype7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype8</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Refund Credit Balance</literalValue>
        <name>Invoice Case Subtype8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoice_Case_Subtype9</fullName>
        <field>Dispute_Issue__c</field>
        <literalValue>Request Invoicing Privileges</literalValue>
        <name>Invoice Case Subtype9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Invoicing_Case_subject_update</fullName>
        <field>Subject</field>
        <formula>Contact.FirstName+&quot; &quot;+Contact.LastName+&quot; - &quot;+TEXT( Type )+ &quot; - &quot; + TEXT(Case_Sub_Type__c)</formula>
        <name>Invoicing Case subject update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LTP_on_RCO_Record_Type</fullName>
        <description>Changes record type to LTP on RCO</description>
        <field>RecordTypeId</field>
        <lookupValue>LTP_on_RCO</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>LTP on RCO Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Last_Modified_Date_Is_changed</fullName>
        <description>This field update is to update the Last Case Modified date and time.</description>
        <field>Last_Case_Update_Time_Date__c</field>
        <formula>LastModifiedDate</formula>
        <name>Last Modified Date - Is changed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_case_to_Closed_Rejected_status</fullName>
        <field>Status</field>
        <literalValue>Closed-Rejected</literalValue>
        <name>Move case to Closed-Rejected status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_case_to_closed_status</fullName>
        <field>Status</field>
        <literalValue>Closed</literalValue>
        <name>Move case to closed Approved status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Move_the_case_to_Auto_Close_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>AutoCloseQueue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update case owner to Auto Close Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OCR_Case_Origin</fullName>
        <description>This field update will change the case origin for the OCR Cases</description>
        <field>Origin</field>
        <literalValue>Online - LMS</literalValue>
        <name>OCR - Case Origin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OCR_Case_Priority</fullName>
        <description>This will update the OCR cases to a Low Priority</description>
        <field>Priority</field>
        <literalValue>Low</literalValue>
        <name>OCR - Case Priority</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OCR_Case_Status_Update</fullName>
        <description>This field update will change the case type to course record when an OCR gets submitted via E2C</description>
        <field>Type</field>
        <literalValue>Course Records</literalValue>
        <name>OCR - Case Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OCR_Case_Sub_Type</fullName>
        <field>Case_Sub_Type__c</field>
        <literalValue>Authorized Provider</literalValue>
        <name>OCR - Case Sub-Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PHSS_IC_Set_Subject_to_Queue</fullName>
        <field>Subject</field>
        <formula>TEXT( Question_Type__c )</formula>
        <name>PHSS IC Set Subject to Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Priority_Value_High</fullName>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Priority Value - High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sales_Case_Subject_Field_Update</fullName>
        <field>Subject</field>
        <formula>Contact.FirstName+&quot; &quot;+Contact.LastName+&quot; - &quot;+TEXT( Type )+ &quot; - &quot; + TEXT(Case_Sub_Type__c)</formula>
        <name>Sales Case Subject Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Service_Case_Read_Only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Service_Case_Read_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Service Case Read Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Service_Case_Read_Only1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Service_Case_Read_Only</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Service Case Read Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Service_Case_Subject_Field_Update</fullName>
        <description>This field update will change the subject to the Contact&apos;s name and the Type of cases it is regarding for all cases other than emails</description>
        <field>Subject</field>
        <formula>Contact.FirstName+&quot; &quot;+Contact.LastName+&quot; - &quot;+TEXT( Type )+ &quot; - &quot; + TEXT(Case_Sub_Type__c)</formula>
        <name>Service Case Subject Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Billing_Default_to_False</fullName>
        <field>Billing_Default_Queue__c</field>
        <literalValue>0</literalValue>
        <name>Set Billing Default to False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Case_owner_to_Business_Operations1</fullName>
        <description>Set Case owner to Business Operations</description>
        <field>OwnerId</field>
        <lookupValue>Business_Operations</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Set Case owner to Business Operations</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Case_owner_to_Finance_COE</fullName>
        <description>Sets the case owner to Finance COE queue</description>
        <field>OwnerId</field>
        <lookupValue>Finance_COE</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Set Case owner to Finance COE</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Priority_to_Medium</fullName>
        <field>Priority</field>
        <literalValue>Medium</literalValue>
        <name>Set Priority to Medium</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_case_owner_to_Collections_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Collections</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Set case owner to Collections Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_owner_to_Retail_Collections_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Retail_Collections</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Set owner to Retail Collections Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Shipping_Contact_Last_Name</fullName>
        <description>Update Shipping Contact Last Name</description>
        <field>Shipping_Contact_Last_Name__c</field>
        <formula>Billing_Contact_Last_Name__c</formula>
        <name>Shipping Contact Last Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_1_hour_case_ownership_transfer</fullName>
        <field>OwnerId</field>
        <lookupValue>Social_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Social- 1 hour case ownership transfer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Automatic_case_closure</fullName>
        <field>Automatic_Case_Closure__c</field>
        <literalValue>1</literalValue>
        <name>Social- Automatic case closure</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Awaiting_Customer_Response_Time</fullName>
        <description>Social Care: timestamp when case is set to Awaiting Customer Response</description>
        <field>Awaiting_Customer_Response_Timestamp__c</field>
        <formula>NOW()</formula>
        <name>Social- Awaiting Customer Response Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Closed_Case</fullName>
        <field>Status</field>
        <literalValue>Closed</literalValue>
        <name>Social- Closed Case</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Customer_Follow_Up_Timestamp</fullName>
        <field>Customer_Follow_Up_Timestamp__c</field>
        <formula>NOW()</formula>
        <name>Social- Customer Follow Up Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_First_ARC_Response_Date_Time</fullName>
        <description>Social Care: timestamp of first response from agent</description>
        <field>First_ARC_Response_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social- First ARC Response Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_In_Queue_Date_Time</fullName>
        <description>Social Care: Date/time stamp of when a case moves to the Social Queue</description>
        <field>In_Queue_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social- In Queue Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Initial_Assignment</fullName>
        <description>Social Care: Assignment upon creation of social case to Social Queue</description>
        <field>OwnerId</field>
        <lookupValue>Social_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Social- Initial Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_No_Action_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Social_No_Action_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Social- No Action Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_No_response_from_customer</fullName>
        <field>Primary_Close_Reason__c</field>
        <literalValue>Customer Unresponsive</literalValue>
        <name>Social- No response from customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Ownership_change_to_Social_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Social_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Social- Ownership change to Social Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Second_ARC_Response_Date_Time</fullName>
        <description>Social: second response from ARC timestamp</description>
        <field>Second_ARC_Response_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social- Second ARC Response Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Second_Customer_Post_Date_Time</fullName>
        <description>Social: second post from customer timestamp</description>
        <field>Second_Customer_Post_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social- Second Customer Post Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Set_Record_Type_from_Origin</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Social_Case</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Social- Set Record Type from Origin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Status_Customer_Follow_Up</fullName>
        <field>Status</field>
        <literalValue>Customer Follow Up</literalValue>
        <name>Social: Status=Customer Follow Up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Status_to_Customer_Follow_Up</fullName>
        <field>Status</field>
        <literalValue>Customer Follow Up</literalValue>
        <name>Social- Status to Customer Follow Up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Third_ARC_Response_Date_Time</fullName>
        <description>Social: timestamp of third ARC response</description>
        <field>Third_ARC_Response_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social-Third ARC Response Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Third_Customer_Post_Date_Time</fullName>
        <description>Social: timestamp of third customer post</description>
        <field>Third_Customer_Post_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Social-Third Customer Post Date/Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Update_Status_to_Working</fullName>
        <description>Social Care: Update status to &apos;Working&apos;</description>
        <field>Status</field>
        <literalValue>Working</literalValue>
        <name>Social- Update Status to Working</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Social_Update_Working_Timestamp</fullName>
        <field>Working_Timestamp__c</field>
        <formula>NOW()</formula>
        <name>Social- Update Working Timestamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Update_Escalated</fullName>
        <description>This field update will change the status field to &quot;escalated&quot; to indicate that the case was escalated.</description>
        <field>Status</field>
        <literalValue>Escalated</literalValue>
        <name>Status Update - Escalated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TSC_NAT_Self_pay_queue_Close</fullName>
        <description>Closes TSC NAT - Self pay queue  cases if they are untouched for over 30 days.</description>
        <field>Status</field>
        <literalValue>Closed</literalValue>
        <name>TSC NAT - Self pay queue Close</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unable_to_Collect</fullName>
        <field>Action_Taken__c</field>
        <literalValue>Unable to Collect</literalValue>
        <name>Unable to Collect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Owner_FIN_Acct_Mgmt</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case Owner FIN Acct Mgmt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Owner_FIN_Collections</fullName>
        <field>OwnerId</field>
        <lookupValue>Collections</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case Owner FIN Collections</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Owner_FIN_Customer_Mntce</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Acct_Mntce</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case Owner FIN Customer Mntce</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Owner_to_Account_Maintenance</fullName>
        <description>Updates the case owner to Account Maintenance queue</description>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Acct_Mntce</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case Owner to Account Maintenance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Record_Type_to_RCS_PO</fullName>
        <description>Updates case record type for RCS PO</description>
        <field>RecordTypeId</field>
        <lookupValue>RCS_PO</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Case Record Type to RCS PO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Sub_Type</fullName>
        <description>Update case sub type to RCS PO when case is created from &apos;WEB To Case&apos;</description>
        <field>Case_Sub_Type__c</field>
        <literalValue>RCS PO</literalValue>
        <name>Update Case Sub Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Sub_Type_To_RCSInquiry</fullName>
        <field>Case_Sub_Type__c</field>
        <literalValue>RCS PO Inquiry</literalValue>
        <name>Update Case Sub Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Type_to_RCS_PO</fullName>
        <description>Updates the case type for RCS PO</description>
        <field>Type</field>
        <literalValue>RCS PO</literalValue>
        <name>Update Case Type to RCS PO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_owner_to_Auto_Close_Queue</fullName>
        <description>Move the case owner to Auto Close</description>
        <field>OwnerId</field>
        <lookupValue>AutoCloseQueue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case owner to Auto Close Queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_owner_to_NAT_queue</fullName>
        <field>OwnerId</field>
        <lookupValue>TSC_NAT_Inquiries</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case owner to NAT queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_owner_to_RCS_PO</fullName>
        <field>OwnerId</field>
        <lookupValue>RCS_PO</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case owner to RCS PO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_owner_to_RCS_PO_Field_Update</fullName>
        <field>OwnerId</field>
        <lookupValue>RCS_PO</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Field Update Case owner to RCS PO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_owner_to_Red_Cross_Store</fullName>
        <field>OwnerId</field>
        <lookupValue>Red_Cross_Store</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Case owner to Red Cross Store</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Change_Invoice_New_Status</fullName>
        <field>Change_Invoice_New_Status__c</field>
        <literalValue>1</literalValue>
        <name>Update Change Invoice New Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Company_Name</fullName>
        <field>Company_Name__c</field>
        <formula>Account.Name</formula>
        <name>Update Company Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Customer_Notified_Of_Resolution_T</fullName>
        <field>Customer_Notified_of_Resolution_On_API__c</field>
        <formula>NOW()</formula>
        <name>Update Customer Notified Of Resolution T</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Customer_Notified_Resolution</fullName>
        <field>Customer_Notified_of_Resolution__c</field>
        <literalValue>1</literalValue>
        <name>Update Customer Notified Resolution</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Follow_up_Group_to_blank</fullName>
        <field>Follow_Up_Group__c</field>
        <name>Update Follow-up Group to blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Learn_to_Swim_reg_subject</fullName>
        <description>Update to Subject on Learn to Swim Facility Registration to:

Learn To Swim Facility Registration - Account Name</description>
        <field>Subject</field>
        <formula>Account.Name +&quot; - &quot;+ &quot;Learn to Swim Facility Registration&quot;</formula>
        <name>Update Learn to Swim reg - subject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Log_In_Email</fullName>
        <field>External_LOGIN_EMAIL__c</field>
        <formula>Account.Log_In_Email__c</formula>
        <name>Update Log In Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Queue_Owner</fullName>
        <description>This field is used in the logic of the Case Email routing code &quot;EmailMessageServices&quot;</description>
        <field>Latest_Queue_Owner__c</field>
        <formula>OwnerId</formula>
        <name>Update Queue Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RecordType_to_Invoicing_Read_only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Read_Only_Invoicing</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update RecordType to Invoicing Read only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Read_Only_Invoicing</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type_to_RCSPO_Read_only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Read_Only_RCS_PO</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type to RCSPO Read only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Address_1</fullName>
        <description>Update Shipping Address 1</description>
        <field>Shipping_Address_1__c</field>
        <formula>Billing_Address_1__c</formula>
        <name>Update Shipping Address 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Address_2</fullName>
        <description>Update Shipping Address 2 in Case record</description>
        <field>Shipping_Address_2__c</field>
        <formula>Billing_Address_2__c</formula>
        <name>Update Shipping Address 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_City</fullName>
        <description>Update Shipping City in Case</description>
        <field>Shipping_City__c</field>
        <formula>Billing_City__c</formula>
        <name>Update Shipping City</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Contact_Email</fullName>
        <description>Update Shipping Contact Email in Case</description>
        <field>Shipping_Contact_Email__c</field>
        <formula>Billing_Contact_Email__c</formula>
        <name>Update Shipping Contact Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Contact_First_Name</fullName>
        <description>Update Shipping Contact First Name in Case</description>
        <field>Shipping_Contact_First_Name__c</field>
        <formula>Billing_Contact_First_Name__c</formula>
        <name>Update Shipping Contact First Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Contact_Phone</fullName>
        <description>Update Shipping Contact Phone</description>
        <field>Shipping_Contact_Phone__c</field>
        <formula>Billing_Contact_Phone__c</formula>
        <name>Update Shipping Contact Phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Shipping_Zip</fullName>
        <description>Update Shipping Zip</description>
        <field>Shipping_Zip__c</field>
        <formula>Billing_Zip__c</formula>
        <name>Update Shipping Zip</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Survey_Sent_Flag</fullName>
        <field>Survey_Sent_API__c</field>
        <literalValue>Sent</literalValue>
        <name>Update Survey Sent Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Survey_Sent_Flag_Skipped</fullName>
        <field>Survey_Sent_API__c</field>
        <literalValue>Skipped</literalValue>
        <name>Update Survey Sent Flag - Skipped</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_case_status</fullName>
        <field>Status</field>
        <literalValue>Closed - Invoicing</literalValue>
        <name>Update case status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updating_priority_with_high_value</fullName>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Updating priority with high value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>case_Owner_Finance_COE8</fullName>
        <field>OwnerId</field>
        <lookupValue>Finance_COE_Billing</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>case Owner Finance COE8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Billing Web Request ACH Request %28Electronic Payment%29</fullName>
        <actions>
            <name>case_Owner_Finance_COE8</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =ACH Request (Electronic Payment), the WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;ACH Request (Electronic Payment)&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request AR Exception</fullName>
        <actions>
            <name>Case_Owner_Bos1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = AR Exception, the WF sets up Invoice Case Sub Type = AR Exception, Case Owner = Business Operations Specialists (Sales Operations)</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;AR Exception&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request AR Exception%2CTemporary collections hold</fullName>
        <actions>
            <name>Case_Owner_CustOps</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = AR Exception Needed,Increase Credit Limit,Restore Invoicing Privileges,Submit Customer PO Form and Temporary collections hold the WF sets up Invoice Case Sub Type = AR Exception, Case Owner = Customer Ops</description>
        <formula>AND(
OR(
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;AR Exception Needed&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Increase Credit Limit&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Restore Invoicing Privileges&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Submit Customer PO Form&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Temporary Collections Hold&quot;)
),  
CreatedBy.FirstName = &quot;BillingRequestForm&quot;, 
ISPICKVAL(Origin, &quot;Web to Case&quot;), 
 $Setup.Workflow_Rules__c.Bypass_Rules__c = False)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Account Maintenance</fullName>
        <actions>
            <name>Case_Owner_Finance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type = Account Maintenance, the WF sets up Invoice Case Sub Type: Customer Account Maintenance, and Case Owner = Finance COE/Billing.</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Account Maintenance&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Aquatics</fullName>
        <actions>
            <name>Case_Owner_BOS_Sales</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type = Aquatics Invoicing, the WF sets up Case Owner = Business Operations Specialists (Sales Operations)</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Aquatics Invoicing&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Bankruptcy Notice Received</fullName>
        <actions>
            <name>Update_Case_Owner_FIN_Collections</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Bankruptcy Notice Received the WF sets up Case Owner = FIN Collections</description>
        <formula>AND(
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Bankruptcy Notice Received&quot;), 
CreatedBy.FirstName = &quot;BillingRequestForm&quot;,
 ISPICKVAL(Origin, &quot;Web to Case&quot;), 
 $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Change Invoice Delivery Method To Email%2CPortal%2CUpdate Billing Info%2CUpdate Tax Exemption Status</fullName>
        <actions>
            <name>Update_Case_Owner_FIN_Customer_Mntce</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Change Invoice Delivery Method To Email,portal,Update Billing Info,Update Tax Exemption Status the WF sets up Case Owner = FIN Customer Mntce</description>
        <formula>AND(
OR(
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Change Invoice Delivery Method To Email&quot;), 
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Change Invoice Delivery Method To Portal&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Update Billing Info&quot;), 
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Update Tax Exemption Status&quot;)
),
CreatedBy.FirstName = &quot;BillingRequestForm&quot;,
 ISPICKVAL(Origin, &quot;Web to Case&quot;), 
 $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Copy of Invoice or Copy of Statement</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type =Copy of Invoice or Copy of Statement, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Copy of Invoice or Copy of Statement&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Duplicate Invoice</fullName>
        <actions>
            <name>Case_Owner_Finance_COE1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = AR Exception, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Duplicate Invoice&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Duplicate Invoice%2CInvoice Presentation%2C Missing Payment%2C</fullName>
        <actions>
            <name>Case_Owner_Update_FIN_Billing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Duplicate Invoice Issue,Invoice Presentation Issue,Missing Payment Issue,Refund Credit Balance,Request Billing/Payment History,Request Copy Of Invoice Or Credit Memo,Request, the WF sets up Case Owner = FIN Billing.</description>
        <formula>AND( 
OR(
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Duplicate Invoice Issue&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Invoice Presentation Issue&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Missing Payment Issue&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Refund Credit Balance&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request Billing/Payment History&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request Copy Of Invoice Or Credit Memo&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request Order Details For Invoice&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Wrong Organization Charged&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Other&quot;)
), 
CreatedBy.FirstName = &quot;BillingRequestForm&quot;, 
ISPICKVAL(Origin, &quot;Web to Case&quot;), 
$Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Internal Email Notification</fullName>
        <actions>
            <name>Billing_Web_Request_Customer_Notification1</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>This Workflow is used to send notification to the Sales Rep  who created a case via the Billing Web Form</description>
        <formula>AND( ISPICKVAL(Type,&quot;Invoicing&quot;), CreatedBy.FirstName = &quot;BillingRequestForm&quot;,  ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Invoicing Privileges</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Invoicing Privileges, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Invoicing Privileges&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request MAD Billing</fullName>
        <actions>
            <name>Case_Owner_Finance_COEBill</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type = MAD Billing, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Special Invoicing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;MAD Billing&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Manual Billing Form Submission%2CRequest To Pay By ACH</fullName>
        <actions>
            <name>Update_Case_Owner_FIN_Acct_Mgmt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Manual Billing Form Submission,Request To Pay By ACH, the WF sets up Case Owner = FIN Acct Mgmt.</description>
        <formula>AND(
OR(
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Manual Billing Form Submission&quot;),
ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request To Pay By ACH&quot;)), 
CreatedBy.FirstName = &quot;BillingRequestForm&quot;,
 ISPICKVAL(Origin, &quot;Web to Case&quot;), 
 $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Misapplied Payment</fullName>
        <actions>
            <name>Case_Owner_Finance_COE2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = Misapplied Paymentn, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Misapplied Payment&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Missing Payment</fullName>
        <actions>
            <name>Case_Owner_Finance_COE3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = Missing Payment, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Missing Payment&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Other</fullName>
        <actions>
            <name>Case_Owner_Finance_COE9</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =  Other  the WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND(  ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Other&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;,  ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Pay Invoice</fullName>
        <actions>
            <name>Case_Owner_Finance_COE4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = Pay Invoice, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Pay Invoice&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Price</fullName>
        <actions>
            <name>Case_Owner_Finance_COE5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = Price, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Price&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Request Billing Docs</fullName>
        <actions>
            <name>Case_Owner_Finance_COE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type = Request Billing Docs  WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request Billing Docs&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Request Receipt%2FOrder Detail</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type =  Request Receipt/Order Detail  the WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Request Receipt/Order Detail&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Special Invoicing Customer Issue</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type =Special Invoicing Customer Issue, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Special Invoicing Customer Issue&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Vendor Forms</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =  Vendor Forms  the WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND(  ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Vendor Forms&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;,  ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web Request Wrong Org</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>When Billing Web Request Type =  Wrong Org  the WF sets up Case Owner = Finance COE/Billing.</description>
        <formula>AND(  ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Wrong Org&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;,  ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Billing Web RequestRefund Credit Balance</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When Billing Web Request Type =Refund Credit Balance, the WF sets up Invoice Case Sub Type = Duplicate Invice, Case Owner = Finance COE/Billing</description>
        <formula>AND( ISPICKVAL( Billing_Web_Request_Type__c ,&quot;Refund Credit Balance&quot;),  CreatedBy.FirstName = &quot;BillingRequestForm&quot;, ISPICKVAL(Origin, &quot;Web to Case&quot;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = False )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>CRE</fullName>
        <actions>
            <name>CRE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>CRE</value>
        </criteriaItems>
        <description>Moves CRE cases to Fin Billing queue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Case AR Exception Closing</fullName>
        <active>true</active>
        <description>If Type = Invoice, Case status is Open, Case Subtype = AR Exception. Then assign the case to BOS Queue
At day 31 of being open, the case will close.  If the case is closed through this business rule, there will be an automatic notification sent to the ow</description>
        <formula>AND( ISPICKVAL( Type , &quot;Invoicing&quot;), ISPICKVAL( Dispute_Issue__c , &quot;AR Exception&quot;), OR(ISPICKVAL( Status , &quot;New&quot;),  ISPICKVAL(Status, &quot;New - Assigned&quot;),  ISPICKVAL(Status, &quot;On Hold - IRT&quot;),   ISPICKVAL(Status, &quot;On Hold - Customer&quot;),   ISPICKVAL(Status, &quot;Follow Up - New Email&quot;),  ISPICKVAL(Status, &quot;Agent Follow Up&quot;),   ISPICKVAL(Status, &quot;On Hold - Sales Rep&quot;),   ISPICKVAL(Status, &quot;On Hold - Sales Admin&quot;)),   $Setup.Validation_Rules__c.Bypass_Rules__c =False)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AR_Exception_case_has_been_closed</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Case_Owner_BOS2</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Case_REached_Age_Limit</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Closed_Invoicing</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Service_Case_Read_Only1</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Unable_to_Collect</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X20_day_owner_notification_on_invoicing_cases</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>20</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Case AR Exception Closing- TEST</fullName>
        <active>false</active>
        <description>If Type = Invoice, Case status is Open, Case Subtype = AR Exception. Then assign the case to BOS Queue
At day 31 of being open, the case will close.  If the case is closed through this business rule, there will be an automatic notification sent to the ow</description>
        <formula>AND( 
ISPICKVAL( Type , &quot;Invoicing&quot;), 
ISPICKVAL( Dispute_Issue__c , &quot;AR Exception&quot;),
OwnerId  = &quot;005d0000001XNW9&quot;, 
 
OR(ISPICKVAL( Status , &quot;New&quot;),  
ISPICKVAL(Status, &quot;New - Assigned&quot;),  
ISPICKVAL(Status, &quot;On Hold - Internal&quot;),   
ISPICKVAL(Status, &quot;On Hold - Customer&quot;),  
ISPICKVAL(Status, &quot;Follow Up - New Email&quot;), 
ISPICKVAL(Status, &quot;Agent Follow Up&quot;),   
ISPICKVAL(Status, &quot;On Hold - Sales Rep&quot;),   
ISPICKVAL(Status, &quot;On Hold - Sales Admin&quot;)),   $Setup.Validation_Rules__c.Bypass_Rules__c =False)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X20_day_owner_notification_on_invoicing_cases_Test</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>AR_Exception_case_has_been_closed_Test</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Closed_Invoicing_Test</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Case Auto Close</fullName>
        <actions>
            <name>Case_Status_Update_Closed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR (1 and 2)</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>AutoCloseQueue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>equals</operation>
            <value>Classes-Notify@usa.redcross.org</value>
        </criteriaItems>
        <description>This workflow is meant to update the case to a closed status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Auto Close Formula</fullName>
        <actions>
            <name>Case_Status_Update_Closed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is meant to update the case to a closed status</description>
        <formula>AND( 

OR( 
AND( 
Owner:Queue.QueueName = &apos;AutoCloseQueue&apos;, 
SuppliedEmail = &apos;Classes-Notify@usa.redcross.org&apos;), 

Owner:Queue.QueueName = &apos;AutoCloseQueue&apos; 
), 
AND( 
Owner:Queue.QueueName != &apos;LTP on RCO&apos;), 
OR( 
!CONTAINS(Account.Name,&apos;Instructors Corner Account&apos;),ISNULL(Account.Name),ISBLANK(Account.Name)), 

$Setup.Workflow_Rules__c.Bypass_Rules__c != True )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Denied</fullName>
        <actions>
            <name>Case_Denied</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email Alert when PO Order Denied.</description>
        <formula>If(ISPICKVAL(Primary_Close_Reason__c ,&quot;Customer Ineligible&quot;), true, false)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - ARC Support Team</fullName>
        <actions>
            <name>Case_Queue_Update_ARC_Support_Team</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>ARC Support Team</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - ARC Support Team Formula</fullName>
        <actions>
            <name>Case_Queue_Update_ARC_Support_Team</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;ARC Support Team&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - CCO Specialist Group</fullName>
        <actions>
            <name>Case_Queue_Update_CCO_Specialist</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>CCO Specialist</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - CCO Specialist Group Formula</fullName>
        <actions>
            <name>Case_Queue_Update_CCO_Specialist</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;CCO Specialist&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - CST Queue</fullName>
        <actions>
            <name>Case_Queue_Update_CST_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>CST Queue</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - CST Queue Formula</fullName>
        <actions>
            <name>Case_Queue_Update_CST_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;CST Queue&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Certificate Group</fullName>
        <actions>
            <name>Case_Queue_Update_Certificate_Support</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>Certificate Support</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Certificate Group Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Certificate_Support</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;Certificate Support&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Course Record Group</fullName>
        <actions>
            <name>Case_Queue_Update_Course_Records</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(
ISPICKVAL( Follow_Up_Group__c, &quot;Course Records&quot;) ,
 $Setup.Workflow_Rules__c.Bypass_Rules__c =false)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Course Record Group Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Course_Records</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;Course Records&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Instructor Support</fullName>
        <actions>
            <name>Case_Queue_Update_Instructor_Support</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>Instructor Support</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Instructor Support Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Instructor_Support</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;Instructor Support&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Outbound Queue</fullName>
        <actions>
            <name>Case_Queue_Update_Outbound</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>Outbound Group Queue</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the outbound group queue picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Outbound Queue Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Outbound</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the outbound group queue picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;Outbound Group Queue&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - RDC Group</fullName>
        <actions>
            <name>Case_Queue_Update_RDC_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>RDC Queue</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - RDC Group Formula</fullName>
        <actions>
            <name>Case_Queue_Update_RDC_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;RDC Queue&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Registration Support Queue</fullName>
        <actions>
            <name>Case_Queue_Update_Reg_Support_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Follow_Up_Group__c</field>
            <operation>equals</operation>
            <value>Registration Support Queue</value>
        </criteriaItems>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Follow Up - Registration Support Queue Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Reg_Support_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Case_Update_Follow_Up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will change the owner of the case to the Queue designated in the follow up picklist value.</description>
        <formula>AND(  ISPICKVAL(Follow_Up_Group__c, &apos;Registration Support Queue&apos;),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Information update - contact zip</fullName>
        <actions>
            <name>Contact_Postal_Code_on_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Case.Contact_Postal_Code__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This workflow is to update the case with contact information to assist in the automation of OpenSpan</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Information update - contact zip Formula</fullName>
        <actions>
            <name>Contact_Postal_Code_on_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is to update the case with contact information to assist in the automation of OpenSpan</description>
        <formula>AND(  ISBLANK(Contact_Postal_Code__c),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Origin - Postal Mail</fullName>
        <actions>
            <name>Case_Origin_Postal_Mail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>equals</operation>
            <value>redcross@tsc.com</value>
        </criteriaItems>
        <description>When email to case comes in from the TSC scanner related to postal mail this workflow will update the case origin to &quot;Postal Mail&quot;</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Case Origin - Postal Mail Formula</fullName>
        <actions>
            <name>Case_Origin_Postal_Mail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>When email to case comes in from the TSC scanner related to postal mail this workflow will update the case origin to &quot;Postal Mail&quot;</description>
        <formula>AND(  SuppliedEmail = &apos;redcross@tsc.com&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Case Priority Update - Cancellations</fullName>
        <actions>
            <name>Case_Priority_Update_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Cancel</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Cancel</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Case_Sub_Type__c</field>
            <operation>equals</operation>
            <value>Cancellation</value>
        </criteriaItems>
        <description>This workflow is to change the priority of cases that come in with the word Cancel get changed to  High Priority</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Priority Update - Cancellations Formula</fullName>
        <actions>
            <name>Case_Priority_Update_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is to change the priority of cases that come in with the word Cancel get changed to  High Priority</description>
        <formula>AND( OR( CONTAINS( Description , &apos;Cancel&apos;), CONTAINS( Description , &apos;cancel&apos;), CONTAINS( Description , &apos;CANCEL&apos;), CONTAINS( Subject , &apos;Cancel&apos;),  CONTAINS( Subject , &apos;cancel&apos;),  CONTAINS( Subject , &apos;CANCEL&apos;), ISPICKVAL( Case_Sub_Type__c , &apos;Community Cancellation&apos;), ISPICKVAL( Case_Sub_Type__c , &apos;Cancel&apos;)),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case Status Changed to New Assigned</fullName>
        <actions>
            <name>Change_Status_to_New_Assigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates case status to New - Assigned when case is assigned to a user.</description>
        <formula>AND(ISPICKVAL(Status, &quot;New&quot;) ,  isChanged(OwnerId),RecordType.DeveloperName = &quot;Service_Cases&quot;, ISPICKVAL (Type, &quot;Invoicing&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Status Changed to New Assigned Formula</fullName>
        <actions>
            <name>Change_Status_to_New_Assigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates case status to New - Assigned when case is assigned to a user.</description>
        <formula>AND(ISPICKVAL(Status, &quot;New&quot;) ,     isChanged(OwnerId),  AND(Latest_Queue_Owner__c != null ||  CreatedBy.Alias != &quot;sauto&quot;), ISCHANGED(LastModifiedDate), LastModifiedDate  &gt;  CreatedDate,  Owner:Queue.QueueName != &quot;AutoCloseQueue&quot;, RecordType.DeveloperName = &quot;Service_Cases&quot;,    ISPICKVAL (Type, &quot;Invoicing&quot;), $Setup.Workflow_Rules__c.Bypass_Rules__c = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case Status Changed to New Assigned Formula for invoicing</fullName>
        <actions>
            <name>Change_Status_to_New_Assigned_for_Invoic</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates case status to New - Assigned when case is assigned to a user.</description>
        <formula>AND(ISPICKVAL(Status, &quot;New&quot;) ,     isChanged(OwnerId),  AND(Latest_Queue_Owner__c != null ||  CreatedBy.Alias != &quot;sauto&quot;), ISCHANGED(LastModifiedDate), LastModifiedDate  &gt;  CreatedDate,  Owner:Queue.QueueName != &quot;AutoCloseQueue&quot;, RecordType.DeveloperName = &quot;Invoicing&quot;,    ISPICKVAL (Type, &quot;Invoicing&quot;), $Setup.Workflow_Rules__c.Bypass_Rules__c = False)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Case sent to CFS</fullName>
        <actions>
            <name>This_is_to_send_email_alert_to_customer_when_case_record_is_sent_to_CFS</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Case record has been sent to CFS</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Case with High priority</fullName>
        <actions>
            <name>Case_with_High_priority_Updates</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email,Community</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Invoicing Case,Read Only Invoicing</value>
        </criteriaItems>
        <description>Case with High priority</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Case with No priority</fullName>
        <actions>
            <name>Set_Priority_to_Medium</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>notEqual</operation>
            <value>High,Medium,Low,Critical</value>
        </criteriaItems>
        <description>Case with No priority</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change Case Record Type to Sales For RSG</fullName>
        <actions>
            <name>Change_Case_Record_Type_to_Sales</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Community Registration Lead</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Service Cases</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change Case Record Type to Sales For RSG Formula</fullName>
        <actions>
            <name>Change_Case_Record_Type_to_Sales</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  CONTAINS( Subject , &apos;Community Registration Lead&apos;),  RecordType.Name = &apos;Service Cases&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change Invoicing to Read only Invoicing</fullName>
        <actions>
            <name>Update_RecordType_to_Invoicing_Read_only</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will change record type from Invoicing to Read only Invoicing when case is closed</description>
        <formula>AND( RecordType.DeveloperName  = &apos;Invoicing&apos;, IsClosed  = TRUE, $Setup.Workflow_Rules__c.Bypass_Rules__c  = FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change RCSPO to Read only RCSPO</fullName>
        <actions>
            <name>Update_Record_Type_to_RCSPO_Read_only</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will change record type from RCSPO to Read only RCSPO when case is closed.</description>
        <formula>AND( RecordType.Name = &apos;RCS PO&apos;, IsClosed = TRUE, $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Copy Billing to Shipping Case Object</fullName>
        <actions>
            <name>Shipping_Contact_Last_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Address_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Address_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_City</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Contact_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Contact_First_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Contact_Phone</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Shipping_Zip</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Copy_Billing_to_Shipping__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Customer Initiated Case Closed</fullName>
        <actions>
            <name>Send_Email_to_Customer_When_Case_Closed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Closed - Resolved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email,Web to Case</value>
        </criteriaItems>
        <description>Workflow to send an email to a customer when a case they have initiated has been closed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Delivery failure email</fullName>
        <actions>
            <name>Case_to_temp_queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>pagnozzi.keria@gmail.com,2XIST,kaaccountingmailers@kerry.com</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Electronic Invoice Assignment for Finance Team</fullName>
        <actions>
            <name>Set_Billing_Default_to_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Assign to finance Account Maintenance Queue based on Subject contains &apos;Electronic Invoice Delivery Opt In&apos; string in it.</description>
        <formula>CONTAINS(Subject,&apos;Electronic Invoice Delivery Opt In&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Follow Up Group - Clear Value</fullName>
        <actions>
            <name>Update_Follow_up_Group_to_blank</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow rule will look to see if the case owner is a queue and based on that it will clear the value in the follow up group field.</description>
        <formula>CONTAINS(OwnerId,&quot;00G&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Follow Up Group - Clear Value Formula</fullName>
        <actions>
            <name>Update_Follow_up_Group_to_blank</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow rule will look to see if the case owner is a queue and based on that it will clear the value in the follow up group field.</description>
        <formula>AND( CONTAINS(OwnerId,&quot;00G&quot;), $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Handle Bounce Email case for RCS PO</fullName>
        <actions>
            <name>Case_Status_Update_Closed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>contains</operation>
            <value>daemon</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email</value>
        </criteriaItems>
        <description>In case if the emails bounces for RCS PO, it will be automatically moved to Auto Close queue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>High Priority for Invoice Case Sub type</fullName>
        <actions>
            <name>Updating_priority_with_high_value</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Dispute_Issue__c</field>
            <operation>equals</operation>
            <value>Bad Address,Duplicate Invoice,Misapplied Payment,Missing Payment,Price,Wrong Organization</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>Invoicing</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Invoicing Case,Read Only Invoicing</value>
        </criteriaItems>
        <description>Set to High when Invoicing Case Type = Bad Address; Duplicate Invoice; Misapplied Payment; Missing Payment; Price; Wrong Organization</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>IC Community Tag</fullName>
        <actions>
            <name>IC_Update_Origin</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Tag a case with Case Origin = Community if the case was created by a community user via the community</description>
        <formula>(ISPICKVAL( $User.UserType, &apos;Customer Portal User&apos;) || CONTAINS ($Profile.Name, &apos;Community&apos;)) &amp;&amp;     ISBLANK( CC_Order__c )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Invoicing Case Subject Field Update Formula</fullName>
        <actions>
            <name>Invoicing_Case_subject_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will be used to update the service case subject line</description>
        <formula>AND(  RecordType.DeveloperName = &apos;Invoicing&apos;,   OR(      NOT(ISPICKVAL(Origin , &apos;Email&apos;)),      NOT(ISPICKVAL(Origin , &apos;Online - LMS&apos;)),      NOT(ISPICKVAL(Origin , &apos;Web&apos;)),      NOT(ISPICKVAL(Origin , &apos;Web to Case&apos;))      ),   ISBLANK(SuppliedEmail), $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>LTP on RCO Record Type</fullName>
        <actions>
            <name>Change_owner_to_LTPon_RCO_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>LTP_on_RCO_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.Offering_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Offering_ID__c</field>
            <operation>notContain</operation>
            <value>CLS</value>
        </criteriaItems>
        <description>Changes the record type to LTP on RCO</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LTP on RCO Resubmitted</fullName>
        <actions>
            <name>Change_owner_to_LTPon_RCO_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Offering_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Resubmitted</value>
        </criteriaItems>
        <description>Changes the record type to LTP on RCO when the case is resubmitted</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LTP on RCO Rule For Approved Cases</fullName>
        <actions>
            <name>Move_case_to_closed_status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Move_the_case_to_Auto_Close_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>LTP on RCO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Offering - Approved</value>
        </criteriaItems>
        <description>Checks the description on the LTP on RCO cases record</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LTP on RCO Rule For Rejected Cases</fullName>
        <actions>
            <name>Move_case_to_Closed_Rejected_status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_owner_to_Auto_Close_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>LTP on RCO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Offering - Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Notes__c</field>
            <operation>contains</operation>
            <value>User deleted offering</value>
        </criteriaItems>
        <description>Checks the description on the LTP on RCO cases record</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Last Modified Date - Is changed - Case</fullName>
        <actions>
            <name>Last_Modified_Date_Is_changed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow will update a field with anytime the case is modified.</description>
        <formula>AND( OR(ISCHANGED( LastModifiedDate ), OR(ISNEW()) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Last Modified Date - Is changed - Case Formula</fullName>
        <actions>
            <name>Last_Modified_Date_Is_changed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will update a field with anytime the case is modified.</description>
        <formula>AND( OR(ISCHANGED( LastModifiedDate ), OR(ISNEW()) ), $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Mark Send Survey Skipped Upon Case Close</fullName>
        <actions>
            <name>Update_Survey_Sent_Flag_Skipped</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Wflow sends an email to contact with a link to a web survey. Wflow checks if contact on case has been sent a survey within the last X amount of hours.</description>
        <formula>AND(
OR(RecordTypeId = &quot;012d000000097TD&quot;, RecordTypeId = &quot;012d000000097TC&quot;), 
IsClosed = true,  PRIORVALUE(IsClosed ) = false ,   
Contact.Hours_Since_Last_Survey_Sent__c &lt;   $Setup.Survey_Settings__c.Hours_Threshold__c  ,    

$Setup.ETL_Configuration__c.Is_ETL_User__c = false,

 $Setup.Survey_Settings__c.Is_Closed_Case_Survey_Active__c,

 $Setup.Workflow_Rules__c.Bypass_Rules__c = false

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Move RCS PO Case to Red Cross Store</fullName>
        <actions>
            <name>Update_Case_owner_to_Red_Cross_Store</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>contains</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>PO On-Hold CFS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Changes the case owner to RCS PO</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Move to Finance Billing queue</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>General Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>Invoicing</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Online Course Record Cases</fullName>
        <actions>
            <name>OCR_Case_Origin</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Priority</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Sub_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>equals</operation>
            <value>Classes-Notify@usa.redcross.org</value>
        </criteriaItems>
        <description>This workflow will update OCR cases with correct information for agents</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Online Course Record Cases Formula</fullName>
        <actions>
            <name>OCR_Case_Origin</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Priority</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>OCR_Case_Sub_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will update OCR cases with correct information for agents</description>
        <formula>AND(  SuppliedEmail  =  &apos;Classes-Notify@usa.redcross.org&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>PHSS_IC_Question_is_Subject</fullName>
        <actions>
            <name>PHSS_IC_Set_Subject_to_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>On case create, make the subject the initial question asked</description>
        <formula>CONTAINS(Subject, &quot;PHSS-IC-Question&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Route Nurse Assistant Training Lead</fullName>
        <actions>
            <name>Update_Case_owner_to_NAT_queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>General Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>Salesforce Automation Account</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>ARC PHSS TSC Nurse Assistant Training Lead</value>
        </criteriaItems>
        <description>Changes the case owner to NAT Inquiry queue</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Case Read Only Record Type Change</fullName>
        <actions>
            <name>Case_Record_Type_Change_Sales_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Sales Case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This workflow will update the sales case record type to read only.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sales Case Read Only Record Type Change Formula</fullName>
        <actions>
            <name>Case_Record_Type_Change_Sales_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will update the sales case record type to read only.</description>
        <formula>AND(  RecordType.Name = &apos;Sales Case&apos;,  IsClosed = TRUE,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sales Case Subject Field Update</fullName>
        <actions>
            <name>Sales_Case_Subject_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Sales Case</value>
        </criteriaItems>
        <description>This rule will update the sales case subject to standardize it with the Customer name and the type of case.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sales Case Subject Field Update Formula</fullName>
        <actions>
            <name>Sales_Case_Subject_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This rule will update the sales case subject to standardize it with the Customer name and the type of case.</description>
        <formula>AND(  RecordType.Name = &apos;Sales Case&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 1</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 1</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 1 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;1&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 2</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 2</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 2 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;2&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 3</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 3</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 3 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;3&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 4</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 4</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 4 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;4&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 5</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 5</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 5 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;5&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 6</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_6</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 6</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 6 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_6</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;6&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 7</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_7</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_To_Sales_Director__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sales_Director_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 7</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sales Director Escalation - Sector 7 Formula</fullName>
        <actions>
            <name>Case_Sales_Dir_Queue_Update_Sector_7</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Sales Director.</description>
        <formula>AND(  Escalate_To_Sales_Director__c = TRUE,  Sales_Director_Sector__c = &apos;7&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Customer Email For Ready To Close Invoice Cases Formula</fullName>
        <actions>
            <name>Send_Customer_Notification_for_Invoicing_moved_from_Adjustment_to_Ready_to_Close</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Customer_Notif_Of_Resolution_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Customer_Notif_Of_Resolution_Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Email will be sent to the contact (cusotmer )on the case for invoicing cases when case is moved to Ready to Close queue. Also when this occurs a check box &quot;Customer Notification Sent&quot; will be checked to indicate email has been sent out along with a timest</description>
        <formula>AND( ISPICKVAL(Type  , &quot;Invoicing&quot;),RecordType.DeveloperName = &quot;Invoicing&quot;,    OwnerId = &quot;00Gd0000000SdP7&quot;,  PRIORVALUE(OwnerId) = &quot;00Gd0000000SdP5&quot;,   Customer_Notified_of_Resolution__c = false , $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send Survey Upon Case Close</fullName>
        <actions>
            <name>Send_Closed_Case_Survey</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Survey_Sent_Flag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Wflow sends an email to contact with a link to a web survey. Wflow checks if contact on case has been sent a survey within the last X amount of hours.</description>
        <formula>AND
( OR(RecordTypeId = &quot;012d000000097TD&quot;, RecordTypeId = &quot;012d000000097TC&quot;,RecordTypeId = &quot;0120V000001pNvg&quot;,RecordTypeId = &quot;012d0000001cm4l&quot;),  PRIORVALUE(IsClosed ) = false , IsClosed = true, OR ( Contact.Hours_Since_Last_Survey_Sent__c &gt;= $Setup.Survey_Settings__c.Hours_Threshold__c , ISBLANK(Contact.Hours_Since_Last_Survey_Sent__c) ), $Setup.ETL_Configuration__c.Is_ETL_User__c = false, $Setup.Survey_Settings__c.Is_Closed_Case_Survey_Active__c = true, Contact.HasOptedOutOfEmail = false, $Setup.Workflow_Rules__c.Bypass_Rules__c = false )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send Survey Upon Case Close %28for Invoicing Cases%29</fullName>
        <active>false</active>
        <description>Wflow sends an email to contact with a link to a web survey. Wflow checks if contact on case has been sent a survey within the last X amount of hours.</description>
        <formula>AND( 

OR(RecordTypeId = &quot;012d000000097TD&quot;, RecordTypeId = &quot;012d000000097TC&quot;),

PRIORVALUE(IsClosed ) = false , 

IsClosed = true,   

OR ( 	Contact.Hours_Since_Last_Survey_Sent__c &gt;=  $Setup.Survey_Settings__c.Hours_Threshold__c ,    

        ISBLANK(Contact.Hours_Since_Last_Survey_Sent__c)
),
	
$Setup.ETL_Configuration__c.Is_ETL_User__c = false,  

 $Setup.Survey_Settings__c.Is_Closed_Case_Survey_Active__c = true,

Contact.HasOptedOutOfEmail = false,

ISPICKVAL( Type,&quot;Invoicing&quot;),

 $Setup.Workflow_Rules__c.Bypass_Rules__c = false  

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Case Read Only Record Type Change</fullName>
        <actions>
            <name>Case_Record_Type_Change_Service_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Service Cases</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This workflow will update the Service case record type to read only.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Case Read Only Record Type Change Formula</fullName>
        <actions>
            <name>Case_Record_Type_Change_Service_Case</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will update the Service case record type to read only.</description>
        <formula>AND(  RecordType.Name = &apos;Service Cases&apos;,  IsClosed = TRUE,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Case Subject Field Update</fullName>
        <actions>
            <name>Service_Case_Subject_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Service Cases</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>notEqual</operation>
            <value>Online - LMS,Web,Web to Case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This workflow will be used to update the service case subject line</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Case Subject Field Update Formula</fullName>
        <actions>
            <name>Service_Case_Subject_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will be used to update the service case subject line</description>
        <formula>AND(  RecordType.Name = &apos;Service Cases&apos;,  
OR(     
NOT(ISPICKVAL(Origin , &apos;Email&apos;)),     
NOT(ISPICKVAL(Origin , &apos;Online - LMS&apos;)),     
NOT(ISPICKVAL(Origin , &apos;Web&apos;)),     
NOT(ISPICKVAL(Origin , &apos;Web to Case&apos;))     
),  
ISBLANK(SuppliedEmail),
$Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 1</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 1</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 1 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 1&apos;,   $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 2</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 2</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 2 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 1&apos;,   $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 3</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 3</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 3 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 3&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 4</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 4</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 4 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 4&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 5</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 5</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 5 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 5&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 6</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_6</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 6</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 6 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_6</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 6&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 7</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_7</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Escalate_to_SDD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SDD_Sector__c</field>
            <operation>equals</operation>
            <value>Sector 7</value>
        </criteriaItems>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Service Delivery Director Escalation - Sector 7 Formula</fullName>
        <actions>
            <name>Case_Queue_Update_Sector_7</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Update_Escalated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow is used to change the case ownership to the Service Delivery Director.</description>
        <formula>AND(  Escalate_to_SDD__c = TRUE,  SDD_Sector__c = &apos;Sector 7&apos;,  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set RCSPO Case Sub Type</fullName>
        <actions>
            <name>Update_Case_Sub_Type_To_RCSInquiry</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Social- In Queue Date%2FTime</fullName>
        <actions>
            <name>Social_In_Queue_Date_Time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Social Care: Timestamp of when a case is reassigned to the Social Queue</description>
        <formula>AND( RecordType.DeveloperName =&quot;Social_Case&quot;, Owner:Queue.QueueName= &quot;Social Queue&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Social- Initial Assignment</fullName>
        <actions>
            <name>Social_New_Case_Notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Social_Initial_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Social_Set_Record_Type_from_Origin</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Twitter,Facebook</value>
        </criteriaItems>
        <description>Social Care: Assignment of social cases to Social Queue</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Social- No Action Queue</fullName>
        <actions>
            <name>Social_No_Action_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Awaiting Customer Response,Closed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Social Case</value>
        </criteriaItems>
        <description>Social Care: changing ownership of case to &apos;No Action&apos; queue</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Social- No Customer Response Automatic Case Closure and reminder- High priority</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Social Case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Awaiting Customer Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>High,Critical</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Social_Ownership_change_to_Social_Queue</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_Status_Customer_Follow_Up</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Social_Automatic_case_closure</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_Closed_Case</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_No_Action_Queue</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_No_response_from_customer</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>4</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Social- No Customer Response Automatic Case Closure- Low%2FMed Priority</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Social Case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Awaiting Customer Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>Medium,Low</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Social_Automatic_case_closure</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_Closed_Case</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_No_Action_Queue</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_No_response_from_customer</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Social- Update Status to Working</fullName>
        <actions>
            <name>Social_Update_Status_to_Working</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Social_Update_Working_Timestamp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Social Care: update status to working</description>
        <formula>AND(RecordType.DeveloperName=&quot;Social_Case&quot;,  NOT(BEGINS(OwnerId,&quot;00G&quot;)),  NOT(ISPICKVAL(Status,&quot;Awaiting Customer Response&quot;)),  NOT(ISPICKVAL(Status,&quot;Pending Approval&quot;)),  NOT(ISPICKVAL(Status,&quot;Closed&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Social_1_hour_case_ownership_transfer</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Social_Status_to_Customer_Follow_Up</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>TSC NAT - Self pay queue Close</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>TSC NAT - Self pay queue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New,New - Assigned,On Hold - Internal,On Hold - Customer,Follow Up - New Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Last_Case_Update_Time_Date__c</field>
            <operation>greaterThan</operation>
            <value>LAST 30 DAYS</value>
        </criteriaItems>
        <description>Automatically changes status to closed for any case in the TSC NAT - Self pay queue  that is untouched for over 30 day</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>TSC_NAT_Self_pay_queue_Close</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.Last_Case_Update_Time_Date__c</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update  RCS PO Case</fullName>
        <actions>
            <name>Update_Case_owner_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <description>Changes the case owner to RCS PO</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update AHA Crossover Case priority</fullName>
        <actions>
            <name>Case_Priority_Update_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2 and 3 and 4</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>equals</operation>
            <value>AHA Crossover</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New,New - Assigned</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>Medium,Low</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>AHA Crossover</value>
        </criteriaItems>
        <description>Changes the priority to High on cases with &apos;AHA Crossover&apos; in subject</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Account Maint for Guest User Profile</fullName>
        <actions>
            <name>Update_Case_Owner_to_Account_Maintenance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 4) OR (1 AND 4 AND (3 OR 5))</booleanFilter>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email,Web to Case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Dispute_Issue__c</field>
            <operation>equals</operation>
            <value>Customer Account Maintenance,Invoice Delivery Method</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Email Billing,Email Invoicing,Portal,Account Maintenance,Merge Orgs,Merge Records,Customer Class,Payment Terms,CFS</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Portal Billing,Invoice Central,Customer Account Maintenance,Invoice Delivery Method</value>
        </criteriaItems>
        <description>Updates the case owner to Account Maintenance submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Business Operations for Guest User Profile</fullName>
        <actions>
            <name>Set_Case_owner_to_Business_Operations1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>AR Exception,bos request,BOS Request,BOS,BOM,Business Operations,Business Ops,Customer Service Credit</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <description>Updates the case owner to Business Operations - Billing submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Collections for Guest User Profile</fullName>
        <actions>
            <name>Set_case_owner_to_Collections_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Collections,Bankruptcy Notice</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <description>Updates the case owner to Collections submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Finance COE - Billing for Guest User Profile</fullName>
        <actions>
            <name>Case_Owner_Finance_COE_Billing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2 OR 3) AND 4</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Voice Message,voice message,voicemail,Bad Address,Duplicate Invoice,Grants,Misapplied Payment,Missing Payment,Pay Invoice,Price,Refund Credit Balance,Request Invoicing Privileges</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Request Copy of Invoice or Copy of Statement,Request Receipt/Order Detail,Vendor Forms,Why Bill to Chapter,Wrong Organization,Other,External PO Needed,Request Invoicing Privileges (New &amp; Reinstate)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Refund Credit Balance,Misdirected Deposit</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <description>Updates the case owner to Finance COE - Billing submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Finance COE for Guest User Profile</fullName>
        <actions>
            <name>Set_Case_owner_to_Finance_COE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>ACH Payment Detail,ACH Payment Request,ACH Request (Electronic Payment),Manual Billing,Manual Billing Request,Invoice Payment made via ACH</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <description>Updates the case owner to Finance COE - Billing submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner To Retail Collections for Guest User Profile</fullName>
        <actions>
            <name>Set_owner_to_Retail_Collections_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Retail Collections</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>contains</operation>
            <value>BillingRequestForm Profile</value>
        </criteriaItems>
        <description>Updates the case owner to Retail Collections submitted by web to case</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner to RCS PO</fullName>
        <actions>
            <name>Update_Case_owner_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>General Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner to Red Cross Store</fullName>
        <actions>
            <name>Update_Case_owner_to_Red_Cross_Store</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>General Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Case owner to Red_Cross_Store</fullName>
        <actions>
            <name>Update_Case_owner_to_Red_Cross_Store</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 4) AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>General Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Change Invoice new Status Boolea</fullName>
        <active>false</active>
        <formula>ISPICKVAL( Status , &quot;New&quot;) &amp;&amp; 
RecordType.DeveloperName = &quot;Service_Cases&quot; &amp;&amp; 
ISPICKVAL (Type, &quot;Invoicing&quot;) &amp;&amp; 
$Setup.Validation_Rules__c.Bypass_Rules__c = false &amp;&amp; 
Change_Invoice_New_Status__c = FALSE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Change_Invoice_New_Status</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.Update_New_status_Boolean_Time__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Customer Notified Of Resolution Timestamp</fullName>
        <actions>
            <name>Update_Customer_Notified_Of_Resolution_T</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Wflow will update the Customer Notified of Resolution On (API) field when &quot;Customer Notified of Resolution &quot; checkbox is checked.</description>
        <formula>AND(Customer_Notified_of_Resolution__c = true, OR(PRIORVALUE(Customer_Notified_of_Resolution__c ) = false, ISNEW()  ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Customer Notified Of Resolution Timestamp Formula</fullName>
        <actions>
            <name>Update_Customer_Notified_Of_Resolution_T</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Wflow will update the Customer Notified of Resolution On (API) field when &quot;Customer Notified of Resolution &quot; checkbox is checked.</description>
        <formula>AND( Customer_Notified_of_Resolution__c = true,  OR( PRIORVALUE(Customer_Notified_of_Resolution__c ) = false , ISNEW() ),  $Setup.Workflow_Rules__c.Bypass_Rules__c = FALSE   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Learn to Swim</fullName>
        <actions>
            <name>Update_Learn_to_Swim_reg_subject</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Learn to Swim Facility Registration</value>
        </criteriaItems>
        <description>Workflow to update subject on Learn to Swim Facility Registration case upon creation. Update to - 

Learn To Swim Facility Registration - Account Name</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Log In Email when it is Blank</fullName>
        <actions>
            <name>Update_Company_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Log_In_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>OR(ISBLANK(External_LOGIN_EMAIL__c), ISBLANK(Company_Name__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Queue Owner</fullName>
        <actions>
            <name>Update_Queue_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This Rule is used in the Case Routing Email Apex Code &quot;EmaiilMessageServices&quot;.</description>
        <formula>ISCHANGED(OwnerId) &amp;&amp;  CONTAINS(OwnerId, &apos;00G&apos;)  &amp;&amp; Owner:Queue.QueueName != &apos;FIN Customer Mntce&apos;</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updates fields for RCS PO</fullName>
        <actions>
            <name>Update_Case_Record_Type_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_Sub_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_Type_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Other_Root_Cause__c</field>
            <operation>contains</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <description>Handles field updates to set the record type and type fields for the RCS PO requirement</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates fields for RCS PO when case owner changes</fullName>
        <actions>
            <name>Update_Case_Record_Type_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_Type_to_RCS_PO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <description>Handles field updates to set the record type and type fields for the RCS PO requirement</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>WF Rule to Send automatic email associated with RCSPO Case customer that are included in the daily customer account file</fullName>
        <actions>
            <name>automatic_email_associated_with_RCSPO_Case_customers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>PO On-Hold CFS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Sent_to_CFS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>utomatic email associated with RCSPO Case customers that are included in the daily customer account file of RCSPO accounts that are transferred from Salesforce to CFS and DWRE</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Web to case Created</fullName>
        <actions>
            <name>Web_to_case_Created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCS PO</value>
        </criteriaItems>
        <description>Work flow that fires when case has been created from WEB.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
