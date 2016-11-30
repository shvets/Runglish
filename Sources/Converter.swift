import Foundation

public class Converter {
  var multiTable: [String: String] = [:]
  var singleTable: [String: String] = [:]

  public init(multiTable: [String: String], singleTable: [String: String]) {
    self.multiTable = multiTable
    self.singleTable = singleTable
  }

  public func transliterate(_ str: String) -> String {
    var result = ""

    let regexp = multiTable.keys.joined(separator: "|") + "|\\w|."

    for item in matchingStrings(str, regex: regexp) {
      let character = item[0]

      if self.multiTable.keys.contains(character) {
        result += self.multiTable[character]!
      }
      else if self.singleTable.keys.contains(character) {
        result += self.singleTable[character]!
      }
      else {
        result += character
      }
    }

    return result
  }

  func matchingStrings(_ str: String, regex: String) -> [[String]] {
    guard let regex = try? NSRegularExpression(pattern: regex, options: []) else { return [] }

    let nsString = str as NSString
    let results  = regex.matches(in: str, options: [], range: NSMakeRange(0, nsString.length))

    return results.map { result in
      (0..<result.numberOfRanges).map { result.rangeAt($0).location != NSNotFound
        ? nsString.substring(with: result.rangeAt($0))
        : ""
      }
    }
  }
}
