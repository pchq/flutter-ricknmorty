class Helper {
  /// Return value of enum (SomeEnum.first => first)
  /// Capitalize first symbol if `capitalize = true`
  static String enumValue(stringWithDot, [bool capitalize = false]) {
    String s = stringWithDot.toString().split('.')[1];
    return capitalize ? Helper.capitalize(s) : s;
  }

  /// Capitalize first symbol of string
  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}
