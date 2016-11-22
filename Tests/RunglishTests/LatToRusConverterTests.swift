import XCTest

@testable import Runglish

class LatToRusConverterTests: XCTestCase {
  var subject = LatToRusConverter()

  func testTransliterate() {
    XCTAssertEqual(subject.transliterate("krasnaya shapochka"), "красная шапочка")
  }
}

