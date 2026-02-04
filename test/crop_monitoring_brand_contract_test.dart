import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:crop_monitoring_brand_contract/crop_monitoring_brand_contract.dart';

void main() {
  group('Library Exports', () {
    test('should export BrandAssets', () {
      // Assert
      expect(BrandAssets, isNotNull);
    });

    test('should export BrandColors', () {
      // Assert
      expect(BrandColors, isNotNull);
    });

    test('should export BrandEndpoints', () {
      // Assert
      expect(BrandEndpoints, isNotNull);
    });

    test('should export BrandConfig', () {
      // Assert
      expect(BrandConfig, isNotNull);
    });

    test('should export DefaultBrandConfig', () {
      // Assert
      expect(DefaultBrandConfig, isNotNull);
    });

    test('should allow creating instances from exported classes', () {
      // Arrange & Act
      const brandAssets = BrandAssets(
        appLogo: 'assets/logo.png',
        appIcon: 'assets/icon.png',
      );

      const brandColors = BrandColors(
        primary: Color(0xFF2196F3),
        onPrimary: Color(0xFFFFFFFF),
        danger: Color(0xFFE53935),
        background: Color(0xFFFFFFFF),
        text: Color(0xFF000000),
        mutedText: Color(0xFF757575),
      );

      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: 'https://api.test.com',
      );

      const brandConfig = DefaultBrandConfig(
        appName: 'Test App',
        colors: brandColors,
        assets: brandAssets,
        endpoints: brandEndpoints,
      );

      // Assert
      expect(brandAssets, isA<BrandAssets>());
      expect(brandColors, isA<BrandColors>());
      expect(brandEndpoints, isA<BrandEndpoints>());
      expect(brandConfig, isA<BrandConfig>());
    });
  });
}
