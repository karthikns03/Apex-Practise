public class APexProgramingDay26 {
    
    
    // Using List
    
   /* List<Id> accountIdList = new List<Id>();
accountIdList.add('0012w00001ID6EGAA1');
accountIdList.add('0012w00001cfl72AAA');

List<Account> lstAccounts = [Select Name,Rating from Account where Id in:accountIdList];
system.debug(lstaccounts);

List<String> rating = new List<String>{'Hot','Cold'};
    List<Account> lstAccounts = [Select Name, Rating from Account where Rating in:rating];

for(Account currentRecord:lstAccounts) {
system.debug(currentRecord);
}
*/
    
    
    // Using Set
    /* Set<Id> accountIdList = new Set<Id>();
accountIdList.add('0012w00001ID6EGAA1');
accountIdList.add('0012w00001cfl72AAA');

List<Account> lstAccounts = [Select Name,Rating from Account where Id in:accountIdList];
system.debug(lstaccounts);

List<String> rating = new List<String>{'Hot','Cold'};
    List<Account> lstAccounts = [Select Name, Rating from Account where Rating in:rating];

for(Account currentRecord:lstAccounts) {
system.debug(currentRecord);
}
*/
    
    
    
    // Using Map
    /*//Create a map of account 
// map - key - account id
//value -account record
//Keyset(), values(), containskey(), get(key), put();

Map<Id, Account> accountMap = new Map<Id, Account>([Select Name,Rating from Account]);
for(Account acc : accountMap.values()) {
    system.debug(acc.Name + ' ' + acc.Rating);
}
for(Id keys : accountMap.Keyset()) {
    system.debug(keys);
}

Map<Id, Account> accountMap = new Map<Id, Account>([Select Name,Rating from Account]);
for(Id keys : accountMap.Keyset()) {
    system.debug(accountMap.get(keys).Name + ' ' + accountMap.get(keys).Rating);
}


Map<Id, Account> accountMap = new Map<Id, Account>([Select Name,Rating from Account]);
for(Id keys : accountMap.Keyset()) {
    Account acc = accountMap.get(keys);
    system.debug(acc.Name + ' ' + acc.Rating);
}

system.debug(accountMap.values());
system.debug(accountMap);


// Create a map (Key : Account Id , Value : Contacts List)

// Converting List into Map for account parent and contact child
Map<Id, List<Contact>> accountmap = new Map<Id, List<Contact>>();
List<Contact> contactList = [Select Id, Name, AccountId from Contact where AccountId != NULL];
for(Contact currentRecord : contactList) {
    if(!accountmap.containsKey(currentRecord.AccountId)) {
         accountmap.put(currentRecord.AccountId, new List<Contact>{currentRecord});
    }
    else {
        	accountmap.get(currentRecord.AccountId).add(currentRecord);
    }
}

for(List<Contact> con : accountmap.values()) {
    system.debug(con.Name);
}


*/
}