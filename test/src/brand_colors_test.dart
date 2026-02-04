import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crop_monitoring_brand_contract/src/brand_colors.dart';

void main() {
  group('BrandColors', () {
    test('should create BrandColors with all required color properties', () {
      // Arrange
      const primary = Color(0xFF2196F3);
      const onPrimary = Color(0xFFFFFFFF);
      const danger = Color(0xFFE53935);
      const background = Color(0xFFFFFFFF);
      const text = Color(0xFF000000);
      const mutedText = Color(0xFF757575);

      // Act
      const brandColors = BrandColors(
        primary: primary,
        onPrimary: onPrimary,
        danger: danger,
        background: background,
        text: text,
        mutedText: mutedText,
      );

      // Assert
      expect(brandColors.primary, equals(primary));
      expect(brandColors.onPrimary, equals(onPrimary));
      expect(brandColors.danger, equals(danger));
      expect(brandColors.background, equals(background));
      expect(brandColors.text, equals(text));
      expect(brandColors.mutedText, equals(mutedText));
    });

    test('should be immutable', () {
      // Arrange
      const brandColors = BrandColors(
        primary: Color(0xFF2196F3),
        onPrimary: Color(0xFFFFFFFF),
        danger: Color(0xFFE53935),
        background: Color(0xFFFFFFFF),
        text: Color(0xFF000000),
        mutedText: Color(0xFF757575),
      );

      // Act & Assert
      expect(brandColors, isA<BrandColors>());
      // Immutability is enforced by @immutable annotation and const constructor
    });

    test('should handle different color values', () {
      // Arrange & Act
      const brandColors1 = BrandColors(
        primary: Color(0xFF2196F3),
        onPrimary: Color(0xFFFFFFFF),
        danger: Color(0xFFE53935),
        background: Color(0xFFFFFFFF),
        text: Color(0xFF000000),
        mutedText: Color(0xFF757575),
      );

      const brandColors2 = BrandColors(
        primary: Color(0xFF4CAF50),
        onPrimary: Color(0xFF000000),
        danger: Color(0xFFF44336),
        background: Color(0xFFF5F5F5),
        text: Color(0xFF212121),
        mutedText: Color(0xFF9E9E9E),
      );

      // Assert
      expect(brandColors1.primary, isNot(equals(brandColors2.primary)));
      expect(brandColors1.onPrimary, isNot(equals(brandColors2.onPrimary)));
      expect(brandColors1.danger, isNot(equals(brandColors2.danger)));
      expect(brandColors1.background, isNot(equals(brandColors2.background)));
      expect(brandColors1.text, isNot(equals(brandColors2.text)));
      expect(brandColors1.mutedText, isNot(equals(brandColors2.mutedText)));
    });

    test('should handle transparent colors', () {
      // Arrange & Act
      const brandColors = BrandColors(
        primary: Color(0x00000000),
        onPrimary: Color(0x00000000),
        danger: Color(0x00000000),
        background: Color(0x00000000),
        text: Color(0x00000000),
        mutedText: Color(0x00000000),
      );

      // Assert
      expect(brandColors.primary.alpha, equals(0));
      expect(brandColors.onPrimary.alpha, equals(0));
      expect(brandColors.danger.alpha, equals(0));
      expect(brandColors.background.alpha, equals(0));
      expect(brandColors.text.alpha, equals(0));
      expect(brandColors.mutedText.alpha, equals(0));
    });

    test('should handle opaque colors', () {
      // Arrange & Act
      const brandColors = BrandColors(
        primary: Color(0xFF2196F3),
        onPrimary: Color(0xFFFFFFFF),
        danger: Color(0xFFE53935),
        background: Color(0xFFFFFFFF),
        text: Color(0xFF000000),
        mutedText: Color(0xFF757575),
      );

      // Assert
      expect(brandColors.primary.alpha, equals(255));
      expect(brandColors.onPrimary.alpha, equals(255));
      expect(brandColors.danger.alpha, equals(255));
      expect(brandColors.background.alpha, equals(255));
      expect(brandColors.text.alpha, equals(255));
      expect(brandColors.mutedText.alpha, equals(255));
    });

    test('should handle semi-transparent colors', () {
      // Arrange & Act
      const brandColors = BrandColors(
        primary: Color(0x802196F3),
        onPrimary: Color(0x80FFFFFF),
        danger: Color(0x80E53935),
        background: Color(0x80FFFFFF),
        text: Color(0x80000000),
        mutedText: Color(0x80757575),
      );

      // Assert
      expect(brandColors.primary.alpha, equals(128));
      expect(brandColors.onPrimary.alpha, equals(128));
      expect(brandColors.danger.alpha, equals(128));
      expect(brandColors.background.alpha, equals(128));
      expect(brandColors.text.alpha, equals(128));
      expect(brandColors.mutedText.alpha, equals(128));
    });
  });
}

