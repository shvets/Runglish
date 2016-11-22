public class LatToRusConverter: Converter {
  let LOWER_SINGLE = [
    //"i": "і",
    //"g": "ґ",
    "#": "№",
    //"e": "є",
    "a": "а", "b": "б",  "v": "в", "g": "г", "d": "д", "e": "е", "z": "з", "i": "и",
    "k": "к", "l": "л", "m": "м", "n": "н", "o": "о", "p": "п", "r": "р", "s": "с", "t": "т",
    "u": "у", "f": "ф", "h": "х", "y": "ъ",
    //"y": "ы",
    "c": "к", "w":  "в"
  ]

  let LOWER_MULTI = [
    "yo": "ё",
    "yi": "ї",
    "ii": "й",
    "zh": "ж",
    "ts": "ц",
    "ch": "ч",
    "sh": "ш",
    "sch": "щ",
    "ye": "э",
    "yu": "ю",
    "ya": "я",
    "ie": "ье"
  ]

  let UPPER_SINGLE = [
    //"G": "Ґ",
    "Є": "E",
    //"I": "І"
    "A": "А", "B": "Б", "V": "В", "G": "Г", "D": "Д", "E": "Е", "Z": "З", "I": "И",
    "K": "К", "L": "Л", "M": "М", "N": "Н", "O": "О", "P": "П", "R": "Р",
    "S": "С", "T": "Т", "U": "У", "F": "Ф", "H": "Х", "'": "Ъ", "Y": "Ы",
    "C": "К", "W":  "В"
  ]

  let UPPER_MULTI = [
    "YO": "Ё",
    "YI": "Ї",
    "II": "Й",
    "ZH": "Ж",
    "TS": "Ц",
    "CH": "Ч",
    "SH": "Ш",
    "SCH": "Щ",
    "YE": "Э",
    "YU": "Ю",
    "YA": "Я",
    "IE": "ЬЕ"
  ]

  public init() {
    super.init(lower_single: LOWER_SINGLE, lower_multi: LOWER_MULTI, upper_single: UPPER_SINGLE, upper_multi: UPPER_MULTI)
  }
}
