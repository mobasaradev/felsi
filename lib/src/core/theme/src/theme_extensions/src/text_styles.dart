import 'package:felsi/src/core/theme/src/theme_extensions/src/colors.dart';
import 'package:flutter/material.dart';

class _AppBarText {
  const _AppBarText();

  TextStyle get title => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
}

class _OnboardingText {
  const _OnboardingText();

  TextStyle get title => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );

  TextStyle get body => const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
      );
}

class _LinkText {
  const _LinkText();

  TextStyle get text => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
      );
}

class _SeafarerRoleText {
  const _SeafarerRoleText();

  TextStyle get title => const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
      );

  TextStyle get description => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
      );
}

class _ForgotPasswordText {
  const _ForgotPasswordText();

  TextStyle get title => const TextStyle(
        fontSize: 24,
        height: 36 / 24,
        fontWeight: FontWeight.w600,
      );

  TextStyle get body1 => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
        fontWeight: FontWeight.w400,
      );
}

class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  const TextStyleExtension(this.color);

  final ColorExtension color;

  TextStyle get title24Regular {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get title24Medium {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get title24Semibold {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get title24Bold {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get title20Medium {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get title20Secondary {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: color.text.secondary,
    );
  }

  TextStyle get title18Regular {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: color.text.secondary,
    );
  }

  TextStyle get title18Medium {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get title18SemiBold {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color.text.black,
    );
  }

  TextStyle get title18Bold {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: color.text.black,
    );
  }

  TextStyle get body16Light {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: color.text.secondary,
    );
  }

  TextStyle get body16Regular {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color.text.black,
    );
  }

  TextStyle get body16Medium {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get body16Semibold {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get body16Bold {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color.text.black,
    );
  }

  TextStyle get body14Regular {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color.text.black,
    );
  }

  TextStyle get body14Secondary {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color.text.secondary,
    );
  }

  TextStyle get body12LightSecondary {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: color.text.secondary,
    );
  }

  TextStyle get body12Regular {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color.text.black,
    );
  }

  TextStyle get body12RegularSecondary {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color.text.secondary,
    );
  }

  TextStyle get body12Medium {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color.text.black,
    );
  }

  TextStyle get body12Semibold {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color.text.black,
    );
  }

  TextStyle get fieldLabel => const TextStyle(
        fontSize: 14,
        height: 24 / 14,
        fontWeight: FontWeight.w500,
      );

  final appBar = const _AppBarText();
  final linkText = const _LinkText();
  final onboarding = const _OnboardingText();
  final seafarerRole = const _SeafarerRoleText();
  final forgotPassword = const _ForgotPasswordText();

  @override
  ThemeExtension<TextStyleExtension> copyWith() =>
      const TextStyleExtension(ColorExtension());

  @override
  ThemeExtension<TextStyleExtension> lerp(other, t) =>
      const TextStyleExtension(ColorExtension());
}
