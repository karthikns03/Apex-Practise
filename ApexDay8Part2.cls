/**
 * @author      : Karthik	
 * @date        : 08-06-2023
 * @Description : Constructor and Static block
 * 
 **/

public class ApexDay8Part2 {
	
    Integer amount;
    
    Static{
        system.debug('Hello world');
    }
    
    public ApexDay8Part2() {
        amount = 1000;
        system.debug('Empty COnstructor');
        system.debug(this.amount);
    }
    
     public ApexDay8Part2(Integer amount) {
        this.amount = amount;
        system.debug(this.amount);
    }
}