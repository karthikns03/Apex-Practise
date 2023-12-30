public class ApexDay10Part2 {
    
  String firstName,lastName;
    public String fullname{
        get{
            return 'Full Name is ' + firstName + ' '+ lastName;
           }				
        	private set;}
    
    public void setNames(String firstName, String lastName) {
        this.firstName =  firstName;
        this.lastName =  lastName;
        
    }
      

}