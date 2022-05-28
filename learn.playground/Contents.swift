import UIKit

//MARK: Dictinoary Swift server error messages
var responseMessage = [200: "Ok", 403: "Access forbidden", 404: "File not found", 500: "Internal server error"]

//MARK: Empty dictionary
var emptyDictinoary: [String: String] = [:]

let httpResponseCodes = [200, 403, 301]

for code in httpResponseCodes {
    if let message = responseMessage[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown response \(code)")
    }
}

//MARK: Set
let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
let ingredientsLast: Set = ["cocoa beans", "sugar", "cocoa butter", "salt", "test for union"]

//MARK: Method to test whether a set contains all the elements of another set or sequence.
print(ingredients.isSubset(of: ingredientsLast))

print(ingredients.union(ingredientsLast))

print(ingredients.intersection(ingredientsLast))

print(ingredients.symmetricDifference(ingredientsLast))

