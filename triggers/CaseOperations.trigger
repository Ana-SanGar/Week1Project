trigger CaseOperations on Case (before insert) {
    for(Case c : Trigger.New) {
        c = CaseOperations.setPremierPriority(c);
    }   
}