import XCTest

@testable import Runglish

class RusToLatConverterTests: XCTestCase {
  var subject = RusToLatConverter()

  func test1Transliterate() {
    XCTAssertEqual(subject.transliterate("как дела?"), "kak dela?")
  }

  func test2Transliterate() {
    XCTAssertEqual(subject.transliterate("Красная шапочка"), "Krasnaya shapochka")
  }
}

