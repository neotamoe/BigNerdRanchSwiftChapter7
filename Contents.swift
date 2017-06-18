//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let playground = "Hello, playground"

var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

// this loop iterates through every Character c in mutablePlayground.  Access characters property of the String mutablePlayground.
for c: Character in mutablePlayground.characters{
    print("'\(c)'")
}

// using a unicode scalar
let oneCoolDude = "\u{1F60E}"

// using a combining scalar
let aAcute = "\u{0061}\u{0301}"

// revealing the Unicode scalars behind a string
for scalar in playground.unicodeScalars{
    print("\(scalar.value)")
}

// using a precomposed character
let aAcutePrecomposed = "\u{00E1}"

// checking canonical equivalence
let b = (aAcute == aAcutePrecomposed)
// says these two things are linguistically the same regardless of the way they were created

// counting characters
print ("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

// indices and ranges
// can't use subcripts on strings (e.g. let index = playground[3]
// instead use String.CharacterView.Index
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]

let range = start...end
let firstFive = playground[range]

// Bronze Challenge -- use startIndex and endIndex to see if empty is really an empty string or not, also check documentation for other ways
let empty = ""
let startIndex = empty.startIndex
let endIndex = empty.endIndex
// other ways I found:
print ("empty: \(empty.characters.count)")

if empty.isEmpty{
    print("nothing in this string")
}

// Silver Challenge - replace "Hello" with an instance created out of Unicode scalars
var hello = "Hello"
var helloUnicode = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"
let c = (hello == helloUnicode)

