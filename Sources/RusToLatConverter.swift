import Foundation

public class RusToLatConverter: Converter {
  let LOWER_SINGLE = [
    "і": "i", "ґ": "g", "ё": "yo", "№": "#", "є": "e", "ї": "yi",
    "а": "a", "б": "b", "в": "v", "г": "g", "д": "d", "е": "e", "ж": "zh",
    "з": "z", "и": "i", "й": "y", "к": "k", "л": "l", "м": "m", "н": "n", "о": "o", "п": "p", "р": "r",
    "с": "s", "т": "t", "у": "u", "ф": "f", "х": "h", "ц": "ts", "ч": "ch", "ш": "sh", "щ": "sch",
    "ъ": "'", "ы": "y", "ь": "", "э": "e", "ю": "yu", "я": "ya"
  ]

  let LOWER_MULTI = [
    "ье": "ie",
    "ьё": "ie"
  ]

  let UPPER_SINGLE = [
    "Ґ": "G", "Ё": "YO", "Є": "E", "Ї": "YI", "І": "I",
    "А": "A", "Б": "B", "В": "V", "Г": "G", "Д": "D", "Е": "E", "Ж": "ZH",
    "З": "Z", "И": "I", "Й": "Y", "К": "K", "Л": "L", "М": "M", "Н": "N", "О": "O", "П": "P", "Р": "R",
    "С": "S", "Т": "T", "У": "U", "Ф": "F", "Х": "H", "Ц": "TS", "Ч": "CH", "Ш": "SH", "Щ": "SCH",
    "Ъ": "'", "Ы": "Y", "Ь": "", "Э": "E", "Ю": "YU", "Я": "YA"
  ]

  let UPPER_MULTI = [
    "ЬЕ": "IE",
    "ЬЁ": "IE"
  ]

  public init() {
    super.init(lower_single: LOWER_SINGLE, lower_multi: LOWER_MULTI, upper_single: UPPER_SINGLE, upper_multi: UPPER_MULTI)
  }

}