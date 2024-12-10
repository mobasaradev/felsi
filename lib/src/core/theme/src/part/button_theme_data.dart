part of '../theme_data.dart';

class _FilledButtonThemeData with ThemeExtensions {
  FilledButtonThemeData call() {
    return FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color.transparent),
        foregroundColor: WidgetStatePropertyAll(color.primary),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(color: color.primary, width: 2),
          ),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24),
        ),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 48),
        ),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _ElevatedButtonThemeData with ThemeExtensions {
  ElevatedButtonThemeData call() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color.primary),
        foregroundColor: WidgetStatePropertyAll(color.onPrimary),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(color: color.primary, width: 2),
          ),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24),
        ),
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 48),
        ),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _TextButtonThemeData with ThemeExtensions {
  TextButtonThemeData call() {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(color.text.secondary),
        textStyle: WidgetStateProperty.all(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
