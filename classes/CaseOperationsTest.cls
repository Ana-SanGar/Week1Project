@isTest
public class CaseOperationsTest {
    @isTest static void testPremierCasePriorityHigh() {       
        //Create account
        Account acc = new Account(Name='Test Account');
        
        //Create contact
        Contact con = new Contact (AccountId = acc.Id, LastName = 'TestContact');
        
        // Perform test
        Test.startTest();
        Case c = new Case (Status = 'New', Origin = 'Email', AccountId = acc.Id, ContactId = con.Id, Is_Premier_Account__c = True);
        Database.SaveResult result = Database.insert(c);
        Test.stopTest();
        // Verify
        Case savedCase = [SELECT Priority FROM Case WHERE Id = :result.getId()];
        System.assertEquals('High', savedCase.Priority);
    }
}