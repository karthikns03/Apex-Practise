/**
 * @author      : Karthik	
 * @date        : 08-06-2023
 * @Description : Calculate Discount based on rating and amount
 * 
 **/

public class ApexDay8 {
    String rating;
    Integer amount;
    Decimal discount=0;
    /**
     * @name : calculate Discount
     * @param : string,integer
     **/
    public Decimal calculateDiscount(String rating, Integer Amount) {
        this.rating=rating;
        this.amount=amount;
        if(rating == 'Hot' && amount > 50000){
            discount = 0.20;
            return discount;
        }
        else if(rating == 'Hot' && amount > 40000){
            discount = 0.10;
            return discount;
        } 
        else  
        {
            return discount;
        }
    
    }

}