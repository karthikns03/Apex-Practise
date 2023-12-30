/* @Name : Karthik
 * @Author : AJ Skill
 * @Date : 14-06-2023
 * @Description : Best Apex Practise
 * */

public class APexDay13Diy {
	
    Integer mark1, mark2, mark3;
    Integer total;
    Decimal average;
    String result, grade;
    
 /*********************************************************************************************   
 * @param  : Integer, Integer, Integer
 * @return : void - nothing
 * @Description : Setting values for marks
 * ********************************************************************************************/
    
    public  APexDay13Diy(Integer mark1, Integer mark2, Integer mark3) {
        this.mark1 = mark1;
        this.mark2 = mark2;
        this.mark3 = mark3; 
    }
/*********************************************************************************************   
 * @param       : No params
 * @return      : Integer
 * @Description : Calculating total mark
 * ********************************************************************************************/
   
    private Integer calculateTotal() {
        total = mark1 + mark2 + mark3;
        return total;
    }
    
 /*********************************************************************************************   
 * @param       : No Param
 * @return      : String
 * @Description : Calculating result
 * ********************************************************************************************/    
    
    private String calculateResult() {
        result = (mark1>45 && mark2>45 && mark3>45) ? 'Pass': 'Fail';
        return result;
    }
    
 /*********************************************************************************************   
 * @param       : No Param
 * @return      : Decimal
 * @Description : Calculating average
 * ********************************************************************************************/    
    
    private Decimal calculateAverage() {
        average = total/3.0;
        return average.setScale(2);
    }
    
 /*********************************************************************************************   
 * @param       : No Param
 * @return      : String
 * @Description : Calculating Grade
 * ********************************************************************************************/    
    
    private string calculateGrade() {
        
        if(result=='Pass') {
            if(average>90) grade='S';
            else if(average > 80) grade = 'A';
            else if(average > 60) grade = 'B';
            else if(average > 50) grade = 'C';
            //else system.debug('No Result');
        }
        return grade;
    }
    
/*********************************************************************************************   
 * @param       : No Param
 * @return      : void Nothing
 * @Description : Printing all tohether
 * ********************************************************************************************/ 
    
    public void displayMarksheet() {
        
        system.debug('Mark 1 : ' + mark1);
        system.debug('Mark 2 : ' + mark2);
        system.debug('Mark 3 : ' + mark3);
        system.debug('Toral : ' + calculateTotal());
        system.debug('Average : ' + calculateAverage());
        system.debug('Result : ' + calculateResult());
        system.debug('Grade : ' + calculateGrade());
    }
    
}