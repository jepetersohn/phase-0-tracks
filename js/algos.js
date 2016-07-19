// I completed the pseudocoding, but did not get time to finish the actual coding. I'm submitting this prior to completion because week 8 
// won't unlock until this is submitted, and I don't want to fall too far behind overall. I ran out of time for this assignment within
// week 7 due to spending the majority of my time studying for the assessment. 
// I will continue to work on this throughout the week so that I may develop these skills. 


// PSEUDOCODE

// determine the length of every object within an array 
// compare the lengths of those objects
// return the item of the array with the longest length

function longestString(array) {
 var longestObject = '';
 for (var i = 0; i < array.length; i++) {
  if (array[i].length > longestObject.length) {
   longestObject = array[i]
  }
 }
  console.log(longestObject)
}

arrayTest = ["try this", "how about this?", "or perhaps this is it?", "hi"]
longestString(arrayTest)

// separate the objects of the hash into individual items 
// compare the items from each hash to see if any of them are the same
// return true if any of them are the same
// return false if none of them are the same



// input an integer (such as 3)
// generate 1-10 random letters
// display those random letters together as nonsensical words, corresponding to the number of the integer provided  
// insert those nonsensical words into an array 
// print the array 
// run the function 10 times through the longest-word method above 
// print the results