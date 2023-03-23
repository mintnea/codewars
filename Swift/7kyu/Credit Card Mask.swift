// 23th march 2023
// ############################
// Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

// Your task is to write a function maskify, which changes all but the last four characters into '#'.

// Examples

// "4556364607935616" --> "############5616"
//      "64607935616" -->      "#######5616"
//                "1" -->                "1"
//                 "" -->                 ""

// // "What was the name of your first pet?"

// "Skippy" --> "##ippy"

// "Nananananananananananananananana Batman!"
// -->
// "####################################man!"
// ############################

import Foundation

func maskify(_ string:String) -> String {
  return string.count > 4 ? "\(String(repeating: "#", count: String(string.prefix(string.count - 4)).count))\(string.suffix(4))" : string
}