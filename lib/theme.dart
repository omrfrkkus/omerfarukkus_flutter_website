import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287254562),
      surfaceTint: Color(4287254562),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958277),
      onPrimaryContainer: Color(4281340928),
      secondary: Color(4285880389),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958277),
      onSecondaryContainer: Color(4280948488),
      tertiary: Color(4284440885),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293191342),
      onTertiaryContainer: Color(4279966976),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283581499),
      outline: Color(4286870634),
      outlineVariant: Color(4292264887),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294948739),
      primaryFixed: Color(4294958277),
      onPrimaryFixed: Color(4281340928),
      primaryFixedDim: Color(4294948739),
      onPrimaryFixedVariant: Color(4285348107),
      secondaryFixed: Color(4294958277),
      onSecondaryFixed: Color(4280948488),
      secondaryFixedDim: Color(4293181351),
      onSecondaryFixedVariant: Color(4284170543),
      tertiaryFixed: Color(4293191342),
      onTertiaryFixed: Color(4279966976),
      tertiaryFixedDim: Color(4291349140),
      onTertiaryFixedVariant: Color(4282861856),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294370780),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285019399),
      surfaceTint: Color(4287254562),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288964149),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283907372),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287458906),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282598684),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285888585),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283318328),
      outline: Color(4285226067),
      outlineVariant: Color(4287133549),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294948739),
      primaryFixed: Color(4288964149),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287057439),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287458906),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285683267),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285888585),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284243763),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294370780),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281997568),
      surfaceTint: Color(4287254562),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285019399),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281474318),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283907372),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280427521),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282598684),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147930),
      outline: Color(4283318328),
      outlineVariant: Color(4283318328),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281872169),
      inversePrimary: Color(4294961370),
      primaryFixed: Color(4285019399),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283048448),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283907372),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282263575),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282598684),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281085703),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384142),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294700001),
      surfaceContainerHigh: Color(4294370780),
      surfaceContainerHighest: Color(4293976022),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948739),
      surfaceTint: Color(4294948739),
      onPrimary: Color(4283376896),
      primaryContainer: Color(4285348107),
      onPrimaryContainer: Color(4294958277),
      secondary: Color(4293181351),
      onSecondary: Color(4282526491),
      secondaryContainer: Color(4284170543),
      onSecondaryContainer: Color(4294958277),
      tertiary: Color(4291349140),
      onTertiary: Color(4281348875),
      tertiaryContainer: Color(4282861856),
      onTertiaryContainer: Color(4293191342),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279833101),
      onSurface: Color(4293976022),
      onSurfaceVariant: Color(4292264887),
      outline: Color(4288646531),
      outlineVariant: Color(4283581499),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4287254562),
      primaryFixed: Color(4294958277),
      onPrimaryFixed: Color(4281340928),
      primaryFixedDim: Color(4294948739),
      onPrimaryFixedVariant: Color(4285348107),
      secondaryFixed: Color(4294958277),
      onSecondaryFixed: Color(4280948488),
      secondaryFixedDim: Color(4293181351),
      onSecondaryFixedVariant: Color(4284170543),
      tertiaryFixed: Color(4293191342),
      onTertiaryFixed: Color(4279966976),
      tertiaryFixedDim: Color(4291349140),
      onTertiaryFixedVariant: Color(4282861856),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950286),
      surfaceTint: Color(4294948739),
      onPrimary: Color(4280815616),
      primaryContainer: Color(4291133774),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293510059),
      onSecondary: Color(4280553988),
      secondaryContainer: Color(4289432180),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291612312),
      onTertiary: Color(4279638016),
      tertiaryContainer: Color(4287730787),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833101),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292593595),
      outline: Color(4289896340),
      outlineVariant: Color(4287725686),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4285479436),
      primaryFixed: Color(4294958277),
      onPrimaryFixed: Color(4280290048),
      primaryFixedDim: Color(4294948739),
      onPrimaryFixedVariant: Color(4283968000),
      secondaryFixed: Color(4294958277),
      onSecondaryFixed: Color(4280159490),
      secondaryFixedDim: Color(4293181351),
      onSecondaryFixedVariant: Color(4282986784),
      tertiaryFixed: Color(4293191342),
      onTertiaryFixed: Color(4279308800),
      tertiaryFixedDim: Color(4291349140),
      onTertiaryFixedVariant: Color(4281743376),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294948739),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950286),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293510059),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294836165),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291612312),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833101),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292593595),
      outlineVariant: Color(4292593595),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976022),
      inversePrimary: Color(4282785792),
      primaryFixed: Color(4294959567),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950286),
      onPrimaryFixedVariant: Color(4280815616),
      secondaryFixed: Color(4294959567),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293510059),
      onSecondaryFixedVariant: Color(4280553988),
      tertiaryFixed: Color(4293454770),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291612312),
      onTertiaryFixedVariant: Color(4279638016),
      surfaceDim: Color(4279833101),
      surfaceBright: Color(4282464049),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281411618),
      surfaceContainerHighest: Color(4282135341),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
