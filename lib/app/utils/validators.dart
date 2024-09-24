import 'package:flutter/material.dart';
import 'package:gelirx/app/extensions/string.dart';

abstract class Validators {
  Validators._();

  static FormFieldValidator<String>? getValidator(TextInputType? keyboardType) {
    return switch (keyboardType) {
      TextInputType.emailAddress => Validators.email,
      TextInputType.number => Validators.number,
      _ => null,
    };
  }

  static String? required(String? input) {
    if (input?.trim().isEmpty ?? true) {
      return 'Required';
    }

    return null;
  }

  static String? requiredTyped<T>(T? input) {
    if (input == null) {
      return 'Required';
    }

    return null;
  }

  static String? email(String? email) {
    if (email == null || email.isEmpty) {
      return 'Required';
    }

    if (!email.isValidEmail()) {
      return 'Enter valid email';
    }

    return null;
  }

  static String? password(String? password) {
    if (password == null || password.isEmpty) {
      return 'Required';
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!password.contains(RegExp('[A-Z]'))) {
      return 'Password must contain at least one capital letter';
    }

    return null;
  }

  static String? number(String? input) {
    if (input == null) {
      return 'Required';
    }

    final number = num.tryParse(input);
    if (number == null) {
      return 'Enter valid number';
    }

    return null;
  }

  static String? positiveInteger(String? input) {
    if (input == null) {
      return 'Required';
    }

    final integer = int.tryParse(input);
    if (integer == null || integer <= 0) {
      return 'Enter positive integer';
    }

    return null;
  }

 static String? validateBirthYear(String birthYearInput) {
    // Check if the input is empty
    if (birthYearInput.isEmpty) {
      return 'Birth year cannot be empty';
    }

    // Try to parse the birth year as an integer
    int? birthYear = int.tryParse(birthYearInput);
    if (birthYear == null) {
      return 'Please enter a valid year';
    }

    // Get the current year
    int currentYear = DateTime.now().year;

    // Define the acceptable age range
    int minAcceptableAge = 18;
    int maxAcceptableAge = 100;

    // Calculate the valid birth year range
    int minYear = currentYear - maxAcceptableAge;
    int maxYear = currentYear - minAcceptableAge;

    // Validate if the birth year is within the acceptable range
    if (birthYear < minYear || birthYear > maxYear) {
      return 'Please enter a birth year between $minYear and $maxYear';
    }

    // If everything is fine, return null (no error)
    return null;
  }
}
