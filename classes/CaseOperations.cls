public class CaseOperations {
    public static Case setPremierPriority(Case c) {
        if (c.Is_Premier_Account__c = TRUE){
            c.Priority = 'High';
        }
        return c;
    }
}