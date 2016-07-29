//declare a string
//determine the length of the string
//reverse the index of each letter in the string 
//so the last letter would become the first letter
//return the reversed string


function reverse(string) {
 var reverseString = ""
 for (var i = string.length - 1; i >= 0; i --)
 reverseString += string[i];
 console.log(reverseString);
 return reverseString;
}

reverse("hello")

//set the reversed string to a variable

var backwards = reverse("my first javascript function!!!");

//driver code to print if a condition is true

if (5>3) {
 console.log(backwards);
}