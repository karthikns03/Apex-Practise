public class AccountCreation {
    public  String createAccount(String name, Decimal annualRevenue, String accountSource, Date slaExpirationDate) {
        Account ac = new Account();
        ac.Name = name;
        ac.AnnualRevenue = annualRevenue;
        ac.AccountSource = accountSource;
        ac.SLAExpirationDate__c = slaExpirationDate;
        insert ac;        
        return ac.Id;
    }
}

/*Account ac = new Account();
ac.Name='Apex2 Kartik ';
ac.AnnualRevenue=984616;
ac.accountsource='Phone Inquiry';
ac.SLAExpirationDate__c = Date.newInstance(2023, 07, 07);
insert ac;
system.debug(ac);

AccountCreation obj = new AccountCreation();
system.debug(obj.createAccount('Apex4 Kartik', 984616, 'Phone Inquiry', Date.newInstance(2023, 7, 7))); */