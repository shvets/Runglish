import Foundation

public class Converter {
  var lower_single: [String: String] = [:]
  var lower_multi: [String: String] = [:]
  var upper_single: [String: String] = [:]
  var upper_multi: [String: String] = [:]

  var lower: [String: String] = [:]
  var upper: [String: String] = [:]

  var multi_keys: [String] = []

  public init(lower_single: [String: String], lower_multi: [String: String], upper_single: [String: String], upper_multi: [String: String]) {
    self.lower_single = lower_single
    self.lower_multi = lower_multi
    self.upper_single = upper_single
    self.upper_multi = upper_multi

    self.lower = merge(self.lower_single, self.lower_multi)
    self.upper = merge(self.upper_single, self.upper_multi)

    for (key, _) in merge(self.lower_multi, self.upper_multi) {
      self.multi_keys.append(key)
    }

    //@multi_keys = (@lower_multi.merge(@upper_multi)).keys.sort_by {|s| s.length}.reverse.freeze
    //.keys.sort_by {|s| s.length}.reverse
  }

  public func transliterate(_ str: String) -> String {
    var result = ""

    let regexp = multi_keys.joined(separator: "|") + "|\\w|."

    for item in matchingStrings(str, regex: regexp) {
      let character = item[0]

//      if self.upper.has_key?(character) && self.lower.has_key?(chars[index + 1]) {
//        // combined case
//        result += self.upper[character].downcase.capitalize
//      }
      if self.upper.keys.contains(character) {
        result += self.upper[character]!
      }
      else if self.lower.keys.contains(character) {
        result += self.lower[character]!
      }
      else {
        result += character
      }
    }

    return result
  }

  func merge(_ dict1: [String: String], _ dict2: [String: String]) -> [String: String] {
    var dict = [String: String]()

    for key in dict1.keys {
      dict[key] = dict1[key]
    }

    for key in dict2.keys {
      dict[key] = dict2[key]
    }

    return dict
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