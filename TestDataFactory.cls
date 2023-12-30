@isTest
public class TestDataFactory {
    
    public static List<Account> createAccountEithRating(Integer numberOfRecords, String rating) {
        List<Account> accountList = new List<Account>();
        for(integer count = 1; count <= numberOfRecords; count++) {
            
            Account obj = new Account(Name = 'Test Demo ' + count, Rating = rating);
            accountList.add(obj);
        } 
        insert accountList;
        return accountList;
        
    }
    
    public static List<DepartmentApex__c> createDepartmentList(Integer numberOfRecords) {
        List<DepartmentApex__c> depList = new List<DepartmentApex__c>();
        for(integer count = 1; count <= numberOfRecords; count++) {
            
            DepartmentApex__c obj = new DepartmentApex__c(Department_name__c = 'Test ' + count, Employees__c = 50 + count, Head_Quarters__c = 'SF');
            depList.add(obj);
        } 
        insert depList;
        return depList;
        
    }

}