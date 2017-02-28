/*
 
 II. Write a function/method utilizing Objective-C or Swift to determine whether two strings are anagrams or not (examples of anagrams: debit card/bad credit, punishments/nine thumps, etc.)
 
 */

// Note: the example in the question is wrong; should be "punishment", not "punishments"
// Time to complete: 30 min

import UIKit


func anagram(string1: String, string2: String) -> Bool {
    
    // create array of chars for each string
    // must first convert to same case and remove spaces
    // note: trimmingCharacters(in: .whitespaces) only removes leading/trailing
    let characters1 = Array(string1.lowercased().replacingOccurrences(of: " ", with: "").characters)
    let characters2 = Array(string2.lowercased().replacingOccurrences(of: " ", with: "").characters)
    
    // check for same length
    if characters1.count != characters2.count {
        return false
    }
    
    // sort arrays alphabetically
    let sorted1 = characters1.sorted { $0 < $1 }
    let sorted2 = characters2.sorted { $0 < $1 }
    
    // return arrays to strings to compare
    let newString1 = String(sorted1)
    let newString2 = String(sorted2)
    
    if newString1 == newString2 {
        return true
    } else {
        return false
    }
    
}


//Usage:

if anagram(string1: "debit card", string2: "bad credit") {
    print("Anagram!")
} else {
    print("Sorry, not an anagram.")
}
