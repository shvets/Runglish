import Foundation

public class RusToLatConverter: Converter {
  let MULTI_TABLE = [
    "ье": "ie",
    "ьё": "ie",
    "ЬЕ": "IE",
    "ЬЁ": "IE"
  ]

  let SINGLE_TABLE = [
    "а": "a",
    "б": "b",
    "в": "v",
    "г": "g",
    "д": "d",
    "е": "e",
    "ё": "yo",
    "ж": "zh",
    "з": "z",
    "и": "i",
    "й": "ii",
    "к": "k",
    "л": "l",
    "м": "m",
    "н": "n",
    "о": "o",
    "п": "p",
    "р": "r",
    "с": "s",
    "т": "t",
    "у": "u",
    "ф": "f",
    "х": "h",
    "ц": "ts",
    "ч": "ch",
    "ш": "sh",
    "щ": "sch",
    "ъ": "''",
    "ы": "y",
    "ь": "'",
    "э": "ye",
    "ю": "yu",
    "я": "ya",

    "А": "A",
    "Б": "B",
    "В": "V",
    "Г": "G",
    "Д": "D",
    "Е": "E",
    "Ё": "yo",
    "Ж": "ZH",
    "З": "Z",
    "И": "I",
    "Й": "II",
    "К": "K",
    "Л": "L",
    "М": "M",
    "Н": "N",
    "О": "O",
    "П": "P",
    "Р": "R",
    "С": "S",
    "Т": "T",
    "У": "U",
    "Ф": "F",
    "Х": "H",
    "Ц": "TS",
    "Ч": "CH",
    "Ш": "SH",
    "Щ": "SCH",
    "Ъ": "''",
    "Ы": "Y",
    "Ь": "'",
    "Э": "YE",
    "Ю": "YU",
    "Я": "YA"
  ]

  public init() {
    super.init(multiTable: MULTI_TABLE, singleTable: SINGLE_TABLE)
  }

}
