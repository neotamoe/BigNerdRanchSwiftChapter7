# Big Nerd Ranch - Swift - Chapter 7 - Strings

## Learning Highlights
* characters in Swift strings are of the Character type.  Use Swift Character types to represent Unicode characters 
and Characters form a string instance.
* Unicode scalars are 21-bit numbers that represent a different character in the Unicode standard.
* Each character in Swift is built from one or more Unicode scalars.
* Each character in Swift is an extended grapheme cluster (sequences of one or more Unicode scalars that combine to produce a single
human-readable character
* to count characters use: variableName.characters.count
* to keep track of indices, use "String.CharacterView.Index" See example below:

```
let playground = "Hello, playground!"
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]

let range = start...end
let firstFive = playground[range]
```

BRONZE and SILVER challenges were both completed.
