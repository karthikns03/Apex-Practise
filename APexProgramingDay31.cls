public class APexProgramingDay31 {

    /*//Req need to get contact and parent account name using dynamic soql

//Relationship Query and Aggregate functions can also be used in Dynamic SOQL 
String firldNames = 'Name,Account.Name';
String query='Select ' + fieldNames = ' from Contact';
List<Contact> contactList = Database.query(query);
for(Contact coRecord : contactList) {
    system.debug('Contact Name :: ' + coRecord.Name);
    system.debug('Account Name :: ' + coRecord.Account. Name);
} 


//S Object

List<SObject> sobjectList = [Select Name from Account];
system.debug(sobjectList[0].getSObjectType());

 
for(SObject record : sobjectList) {
    
  // system.debug(((Account)record).Name);
    system.debug(record.get('Name'));
}


     */
    
    public static void getSObjectRecords(String fieldName, String objectName) {
        List<SObject> recordsList = Database.query('Select ' + fieldName + ' from ' + objectName);
        for(Sobject record : recordsList) {
            system.debug(record.get(fieldName));
        } 
    }
    
}