public class ApexDay7 {
	private String message = 'Welcome';
    
   // public void displayMessage() {
     //   system.debug(message);
    //}
    
    public void displayMessage(String message) {
        this.message = 'Hi ' + message;
        system.debug(message);//local variable
        system.debug(this.message);//class level variable
    }
    public String displayMessage() {
        return message;
    }
}