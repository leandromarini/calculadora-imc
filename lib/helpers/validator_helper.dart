class ValidatorHelper {
  static String isValidText(String text) {
    if (text.isEmpty) return 'Campo obrigatório';
    if (double.parse(text) <= 0) return 'O valor deve ser maior que 0';
    return null;
  }
}
