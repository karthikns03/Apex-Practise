public class PostalBatch implements Database.Batchable<sObject>, Database.AllowsCallouts{
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
        String query = 'Select  Id, Name, Post_Office__c from Postal__c ';
        return Database.getQueryLocator(query);
    }
    
    public Void execute(Database.BatchableContext bc, List<Postal__c> chunks) {
        
        //Integer count = 0;
        //for(Postal__c rec : chunks) {
            //system.debug(rec.Name);
        //}
       List<Postal__c> postalList = new List<Postal__c>();
        
        for(Postal__c rec : chunks) {
            if(rec.Post_Office__c == NULL) {
               
                 postalList.add(PostalHelper.doCallout(rec.Name, rec.Id));
                 system.debug(postalList);
                
            }
            //count += 1;
            //system.debug(count);
        }
        //system.debug('Out from for loop');
        if(!postalList.isEmpty()) {
            update postalList;
        }
    }
    
    public void finish(Database.BatchableContext bc) {
        
        List<AsyncApexJob> jobStatus = [Select status, jobItemsProcessed, TotalJobItems, NumberofErrors
                                        from AsyncApexJob 
                                        Where Id =: bc.getJobId()];
        system.debug(jobStatus);
    }
}