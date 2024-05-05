abstract class Validator {
  static bool validateEmail(String email) {
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9!#\\$%&'*+-/=?^_`{|}~]+(?<!\.\.)\.?[a-zA-Z0-9!#\\$%&'*+-/=?^_`{|}~]+(?<!\.)@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    return emailRegex.hasMatch(email);
  }

  static bool validatePassword(String password) {
    // Regular expression for password validation
    final RegExp passwordRegex =
        RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d\W_]{8,}$");

    return passwordRegex.hasMatch(password);
  }

  static bool validateName(String input) {
    // Regular expression for name and surname validation
    final RegExp nameSurnameRegex = RegExp(r"^[a-zA-Z\s'`-]+$");

    return nameSurnameRegex.hasMatch(input);
  }

  static bool validatePhone(String input) {
    // This regular expression accepts phone numbers that start with a '+' sign
    final RegExp phoneRegex = RegExp(r"^\+[0-9]{1,17}$");

    return phoneRegex.hasMatch(input);
  }

  static bool validateCardNumber(String cardNumber) {
    if (cardNumber.isEmpty) {
      return false;
    }

    // Remove any whitespace and check that only digits remain
    cardNumber = cardNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '');
    final isDigitsOnly = int.tryParse(cardNumber) != null;

    return isDigitsOnly && cardNumber.length >= 13 && cardNumber.length <= 19;
  }

  static bool validateExpiryDate(String expiryDate) {
    if (expiryDate.length != 4) {
      return false;
    }

    final int currentYear = DateTime.now().year;
    final int currentMonth = DateTime.now().month;

    final int year = int.tryParse(expiryDate.substring(2, 4)) ?? 0;
    final int month = int.tryParse(expiryDate.substring(0, 2)) ?? 0;

    // Assuming the year is in 2000s
    final int fullYear = 2000 + year;

    return month >= 1 &&
        month <= 12 &&
        (fullYear > currentYear ||
            (fullYear == currentYear && month >= currentMonth));
  }

  static bool validateCardHolderName(String cardHolderName) {
    if (cardHolderName.isEmpty) {
      return false;
    }

    // Check that name contains only alphabets, spaces, hyphens, and dots
    final hasValidCharacters =
        RegExp(r'^[a-zA-Z\s\.\-]+$').hasMatch(cardHolderName);

    return hasValidCharacters && cardHolderName.length <= 26;
  }

  static bool validateCvv(String cvv) {
    if (cvv.isEmpty) {
      return false;
    }

    // Remove any whitespace and check that only digits remain
    cvv = cvv.replaceAll(RegExp(r'\s+\b|\b\s'), '');
    final isDigitsOnly = int.tryParse(cvv) != null;

    return isDigitsOnly && (cvv.length == 3 || cvv.length == 4);
  }
}
