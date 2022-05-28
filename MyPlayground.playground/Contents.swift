import UIKit

// потоки
let numberOfLegs = ["spider": 8, "ant": 3, "cat": 10]
for(animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// замыкания
let names = ["Zok", "Alex", "Alexandr", "Mark", "Maks"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var reservedName = names.sorted(by: backward)
print(reservedName)

var reservedNameSecond = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 < s2
})
print(reservedNameSecond)


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)
