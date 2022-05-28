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
