import 'dart:math';

// Creating a class for the password Generation.
class PasswordGenerate{

  //Creating a static method for Generating Password.
  static String generatepassword(){
    //Initialized the list.
    List<String> chars = 'QWERTYUIOPASDFGHJKLZXCVBNM'.split('');
    
    List<int> numbers = [1,2,3,4,5,6,7,8,9];

    List<String> specialChars = ["@", "#", "!", "&", "*", "%", "^"];
  
    List <String> password = [];

    for(int i =1; i < 8; i++){
      password.add(chars [Random().nextInt(chars.length)]);
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password.add(specialChars[Random().nextInt(specialChars.length)]);
    } 

    return password.join();

  }
  
}

void main(){
  //Calling the Static method of the class instance.
  print(PasswordGenerate.generatepassword());
}
