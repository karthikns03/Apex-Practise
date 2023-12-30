public abstract class ApexDay12DiySuperClass {
    Integer account;
    String holderName;
    Integer contactNumber;
    protected final Integer OPENING_BALANCE;
    
    public ApexDay12DiySuperClass(Integer account, String holderName, Integer contactNumber) {
        this.account = account;
        this.holderName = holderName;
        this.contactNumber = contactNumber;
        this.OPENING_BALANCE = 5000;
    }
    
    public void displayInformation() {
        System.debug('Account Number ' + account);
        System.debug('Holder Name ' + holderName);
        System.debug('Contact Number '+ contactNumber);
    }
}