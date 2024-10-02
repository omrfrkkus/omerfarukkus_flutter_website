import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8a5022),
      surfaceTint: Color(0xff8a5022),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdcc5),
      onPrimaryContainer: Color(0xff301400),
      secondary: Color(0xff755845),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdcc5),
      onSecondaryContainer: Color(0xff2a1708),
      tertiary: Color(0xff5f6135),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe4e6ae),
      onTertiaryContainer: Color(0xff1b1d00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff52443b),
      outline: Color(0xff84746a),
      outlineVariant: Color(0xffd6c3b7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382f29),
      inversePrimary: Color(0xffffb783),
      primaryFixed: Color(0xffffdcc5),
      onPrimaryFixed: Color(0xff301400),
      primaryFixedDim: Color(0xffffb783),
      onPrimaryFixedVariant: Color(0xff6d390b),
      secondaryFixed: Color(0xffffdcc5),
      onSecondaryFixed: Color(0xff2a1708),
      secondaryFixedDim: Color(0xffe4bfa7),
      onSecondaryFixedVariant: Color(0xff5b412f),
      tertiaryFixed: Color(0xffe4e6ae),
      onTertiaryFixed: Color(0xff1b1d00),
      tertiaryFixedDim: Color(0xffc8ca94),
      onTertiaryFixedVariant: Color(0xff474920),
      surfaceDim: Color(0xffe7d7ce),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffbebe1),
      surfaceContainerHigh: Color(0xfff6e5dc),
      surfaceContainerHighest: Color(0xfff0dfd6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff683507),
      surfaceTint: Color(0xff8a5022),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa46635),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff573d2c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8d6e5a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff43451c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff757849),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff221a15),
      onSurfaceVariant: Color(0xff4e4038),
      outline: Color(0xff6b5c53),
      outlineVariant: Color(0xff88776d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382f29),
      inversePrimary: Color(0xffffb783),
      primaryFixed: Color(0xffa46635),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff874e1f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8d6e5a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff725643),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff757849),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5c5f33),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d7ce),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffbebe1),
      surfaceContainerHigh: Color(0xfff6e5dc),
      surfaceContainerHighest: Color(0xfff0dfd6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3a1900),
      surfaceTint: Color(0xff8a5022),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff683507),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff321d0e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff573d2c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff222401),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff43451c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f5),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d221a),
      outline: Color(0xff4e4038),
      outlineVariant: Color(0xff4e4038),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382f29),
      inversePrimary: Color(0xffffe8da),
      primaryFixed: Color(0xff683507),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4a2200),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff573d2c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3e2817),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff43451c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2c2f07),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d7ce),
      surfaceBright: Color(0xfffff8f5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ea),
      surfaceContainer: Color(0xfffbebe1),
      surfaceContainerHigh: Color(0xfff6e5dc),
      surfaceContainerHighest: Color(0xfff0dfd6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb783),
      surfaceTint: Color(0xffffb783),
      onPrimary: Color(0xff4f2500),
      primaryContainer: Color(0xff6d390b),
      onPrimaryContainer: Color(0xffffdcc5),
      secondary: Color(0xffe4bfa7),
      onSecondary: Color(0xff422b1b),
      secondaryContainer: Color(0xff5b412f),
      onSecondaryContainer: Color(0xffffdcc5),
      tertiary: Color(0xffc8ca94),
      onTertiary: Color(0xff30330b),
      tertiaryContainer: Color(0xff474920),
      onTertiaryContainer: Color(0xffe4e6ae),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff19120d),
      onSurface: Color(0xfff0dfd6),
      onSurfaceVariant: Color(0xffd6c3b7),
      outline: Color(0xff9f8d83),
      outlineVariant: Color(0xff52443b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd6),
      inversePrimary: Color(0xff8a5022),
      primaryFixed: Color(0xffffdcc5),
      onPrimaryFixed: Color(0xff301400),
      primaryFixedDim: Color(0xffffb783),
      onPrimaryFixedVariant: Color(0xff6d390b),
      secondaryFixed: Color(0xffffdcc5),
      onSecondaryFixed: Color(0xff2a1708),
      secondaryFixedDim: Color(0xffe4bfa7),
      onSecondaryFixedVariant: Color(0xff5b412f),
      tertiaryFixed: Color(0xffe4e6ae),
      onTertiaryFixed: Color(0xff1b1d00),
      tertiaryFixedDim: Color(0xffc8ca94),
      onTertiaryFixedVariant: Color(0xff474920),
      surfaceDim: Color(0xff19120d),
      surfaceBright: Color(0xff413731),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbd8e),
      surfaceTint: Color(0xffffb783),
      onPrimary: Color(0xff281000),
      primaryContainer: Color(0xffc5814e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe9c3ab),
      onSecondary: Color(0xff241204),
      secondaryContainer: Color(0xffab8a74),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffccce98),
      onTertiary: Color(0xff161800),
      tertiaryContainer: Color(0xff919463),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff19120d),
      onSurface: Color(0xfffffaf8),
      onSurfaceVariant: Color(0xffdbc7bb),
      outline: Color(0xffb29f94),
      outlineVariant: Color(0xff918076),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd6),
      inversePrimary: Color(0xff6f3a0c),
      primaryFixed: Color(0xffffdcc5),
      onPrimaryFixed: Color(0xff200b00),
      primaryFixedDim: Color(0xffffb783),
      onPrimaryFixedVariant: Color(0xff582a00),
      secondaryFixed: Color(0xffffdcc5),
      onSecondaryFixed: Color(0xff1e0d02),
      secondaryFixedDim: Color(0xffe4bfa7),
      onSecondaryFixedVariant: Color(0xff493120),
      tertiaryFixed: Color(0xffe4e6ae),
      onTertiaryFixed: Color(0xff111200),
      tertiaryFixedDim: Color(0xffc8ca94),
      onTertiaryFixedVariant: Color(0xff363810),
      surfaceDim: Color(0xff19120d),
      surfaceBright: Color(0xff413731),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffffaf8),
      surfaceTint: Color(0xffffb783),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbd8e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe9c3ab),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdffc5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffccce98),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff19120d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf8),
      outline: Color(0xffdbc7bb),
      outlineVariant: Color(0xffdbc7bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd6),
      inversePrimary: Color(0xff462000),
      primaryFixed: Color(0xffffe1cf),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbd8e),
      onPrimaryFixedVariant: Color(0xff281000),
      secondaryFixed: Color(0xffffe1cf),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe9c3ab),
      onSecondaryFixedVariant: Color(0xff241204),
      tertiaryFixed: Color(0xffe8ebb2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffccce98),
      onTertiaryFixedVariant: Color(0xff161800),
      surfaceDim: Color(0xff19120d),
      surfaceBright: Color(0xff413731),
      surfaceContainerLowest: Color(0xff140d08),
      surfaceContainerLow: Color(0xff221a15),
      surfaceContainer: Color(0xff261e18),
      surfaceContainerHigh: Color(0xff312822),
      surfaceContainerHighest: Color(0xff3c332d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
