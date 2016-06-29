public class NewCaseListController {

    public List<Case> getNewCases(){ 
        List<Case> caseList = new List<Case>();
        caseList = [SELECT ID, CaseNumber FROM Case WHERE Status = 'New'];
        return caseList;  
    }
}