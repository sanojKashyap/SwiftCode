import UIKit


func reverse(_ string:String) -> Void {
  var temp =  ""
  
   //will give reverse coun eg. for string Test = 3 , 2, 1 , 0
  for i in (0 ..< string.count).reversed() {
    // Getting the character
    let firstCharacter = string[String.Index(utf16Offset: i, in: string)]
    //Conveting character in to String
    temp += String(firstCharacter)
  }
    print(temp)
}

reverse("sanoj")

