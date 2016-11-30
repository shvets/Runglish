import XCTest

@testable import Runglish

class LatToRusConverterTests: XCTestCase {
  var subject = LatToRusConverter()

  func testTransliterate() {
    XCTAssertEqual(subject.transliterate("krasnaya shapochka"), "красная шапочка")
    XCTAssertEqual(subject.transliterate("krasnyii otel'"), "красный отель")
    XCTAssertEqual(subject.transliterate("KRASNYII OTEL'"), "КРАСНЫЙ ОТЕЛь")
  }
}

