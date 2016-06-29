//Create an Apex class that returns an array (or list) of formatted strings ('Test 0', 'Test 1', ...). The length of the array is determined by an integer parameter.
//The Apex class must be called 'StringArrayTest' and be in the public scope.
//The Apex class must have a public static method called 'generateStringArray'.
//The 'generateStringArray' method must return an array (or list) of strings. Each string must have a value in the format 'Test n' where n is the index of the current string in the array. The number of returned strings is specified by the integer parameter to the 'generateStringArray' method.

public class StringArrayTest {

    public static List<String> generateStringArray(integer n){
        integer x = 0;
        List<String> stringList = new list<String>();
        while (x < n ){
            stringList.add('Test ' + x);
            System.debug(stringList[x]);
            x++;
            
        }
        return stringList;
    }
    
}