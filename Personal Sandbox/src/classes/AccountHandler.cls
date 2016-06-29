//To pass this challenge, create an Apex class that inserts a new account named after an incoming parameter. If the account is successfully inserted, the method should return the account record. If a DML exception occurs, the method should return null.
//The Apex class must be called 'AccountHandler' and be in the public scope.
//The Apex class must have a public static method called 'insertNewAccount'.
//The 'insertNewAccount' method must accept an incoming string as a parameter, name the account after the parameter, insert it into the system and then return the account record.
//The 'insertNewAccount' method must also accept an empty string, catch the failed DML and return null.
//
//
public class AccountHandler {
    
    public static Account insertNewAccount(String s){
        
        Account a = new Account(Name=s);
        try{
            Insert a;
        } catch (DmlException e) {
    		System.debug('A DML exception has occurred: ' + e.getMessage());
            a = null;
        } 
        return a;
    }

}