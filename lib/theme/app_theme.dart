import 'package:flutter/material.dart';

/// Earned App Theme
/// Colores basados en la paleta de la app web
/// - Logo: Terracota (#956C77)
/// - Primary (light): Verde Salvia (#8B9A8D)
/// - Primary (dark): Teal (#0D9488)
/// - Grays: Warm carbon tones
/// - Tipografía: Work Sans (sans-serif), Lora (serif)

class AppColors {
  // Gray scale - Carbón cálido (warm carbon)
  static const gray50 = Color(0xFFFAFAF9); // Off-white cálido
  static const gray100 = Color(0xFFF5F5F4);
  static const gray200 = Color(0xFFE7E5E4);
  static const gray300 = Color(0xFFD6D3D1);
  static const gray400 = Color(0xFFA8A29E);
  static const gray500 = Color(0xFF78716C);
  static const gray600 = Color(0xFF57534E);
  static const gray700 = Color(0xFF44403C);
  static const gray800 = Color(0xFF292524); // Carbón para texto
  static const gray900 = Color(0xFF1C1917); // Headlines oscuras
  static const gray950 = Color(0xFF0C0A09); // Almost black

  // Terracota - Color del logo (marrón rosado calmado)
  static const terracota50 = Color(0xFFFCF5F7);
  static const terracota100 = Color(0xFFF9EBF0);
  static const terracota200 = Color(0xFFF3D7E1);
  static const terracota300 = Color(0xFFE8B8C8);
  static const terracota400 = Color(0xFFD194AB);
  static const terracota500 = Color(0xFFB9738E);
  static const terracota600 = Color(0xFF956C77); // Logo principal
  static const terracota700 = Color(0xFF7A5862);
  static const terracota800 = Color(0xFF5E4449);
  static const terracota900 = Color(0xFF3D2D30);
  static const terracota950 = Color(0xFF1F1618);

  // Verde Salvia - Tema claro (complementario suave del terracota)
  static const sage50 = Color(0xFFF5F8F6);
  static const sage100 = Color(0xFFE8F0E9);
  static const sage200 = Color(0xFFD1E1D3);
  static const sage300 = Color(0xFFB4C9B7);
  static const sage400 = Color(0xFFA0B7A3);
  static const sage500 = Color(0xFF8B9A8D); // Principal - Light mode
  static const sage600 = Color(0xFF6B7C6E);
  static const sage700 = Color(0xFF4A5F4D);
  static const sage800 = Color(0xFF3A4A3D);
  static const sage900 = Color(0xFF2A362D);

  // Teal - Tema oscuro (complementario directo con contraste vibrante)
  static const teal50 = Color(0xFFF0FDFA);
  static const teal100 = Color(0xFFCCFBF1);
  static const teal200 = Color(0xFF99F6E4);
  static const teal300 = Color(0xFF5EEAD4);
  static const teal400 = Color(0xFF2DD4BF);
  static const teal500 = Color(0xFF14B8A6);
  static const teal600 = Color(0xFF0D9488); // Principal - Dark mode
  static const teal700 = Color(0xFF0F766E);
  static const teal800 = Color(0xFF115E59);
  static const teal900 = Color(0xFF134E4A);
  static const teal950 = Color(0xFF042F2E);
}

class AppTheme {
  // Text theme usando Work Sans
  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 57,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.25,
    ),
    displayMedium: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 45,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 36,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );

  // Light Theme - Carbón como primary, Sage como accent
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: AppColors.gray900, // Carbón casi negro
        onPrimary: Colors.white,
        primaryContainer: AppColors.gray100,
        onPrimaryContainer: AppColors.gray900,
        secondary: AppColors.sage500, // Verde salvia para highlights
        onSecondary: Colors.white,
        secondaryContainer: AppColors.sage100,
        onSecondaryContainer: AppColors.sage900,
        tertiary: AppColors.terracota600, // Terracota para logo
        onTertiary: Colors.white,
        surface: AppColors.gray50,
        onSurface: AppColors.gray900,
        surfaceContainerHighest: AppColors.gray200,
        error: const Color(0xFFBA1A1A),
        onError: Colors.white,
        outline: AppColors.gray400,
        shadow: AppColors.gray950.withOpacity(0.1),
      ),
      textTheme: _textTheme.apply(
        bodyColor: AppColors.gray800,
        displayColor: AppColors.gray900,
      ),
      scaffoldBackgroundColor: AppColors.gray50,
      fontFamily: 'WorkSans',
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gray50,
        foregroundColor: AppColors.gray900,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: _textTheme.titleLarge?.copyWith(
          color: AppColors.gray900,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.gray100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray900, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFBA1A1A)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gray900, // Carbón casi negro
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.gray900,
          side: BorderSide(color: AppColors.gray300),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.gray900,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // Dark Theme - Teal
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.teal600,
        onPrimary: Colors.white,
        primaryContainer: AppColors.teal900,
        onPrimaryContainer: AppColors.teal100,
        secondary: AppColors.terracota400,
        onSecondary: AppColors.gray950,
        secondaryContainer: AppColors.terracota900,
        onSecondaryContainer: AppColors.terracota100,
        tertiary: AppColors.sage400,
        onTertiary: AppColors.gray950,
        surface: AppColors.gray950,
        onSurface: AppColors.gray50,
        surfaceContainerHighest: AppColors.gray800,
        error: const Color(0xFFFFB4AB),
        onError: const Color(0xFF690005),
        outline: AppColors.gray600,
        shadow: Colors.black.withOpacity(0.3),
      ),
      textTheme: _textTheme.apply(
        bodyColor: AppColors.gray200,
        displayColor: AppColors.gray50,
      ),
      scaffoldBackgroundColor: AppColors.gray950,
      fontFamily: 'WorkSans',
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gray950,
        foregroundColor: AppColors.gray50,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: _textTheme.titleLarge?.copyWith(
          color: AppColors.gray50,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.gray900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray700),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray700),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.teal600, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFFFB4AB)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.teal600,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.gray50,
          side: BorderSide(color: AppColors.gray700),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.teal400,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
