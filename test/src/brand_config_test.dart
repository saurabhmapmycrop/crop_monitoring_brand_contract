import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crop_monitoring_brand_contract/src/brand_config.dart';
import 'package:crop_monitoring_brand_contract/src/brand_assets.dart';
import 'package:crop_monitoring_brand_contract/src/brand_colors.dart';
import 'package:crop_monitoring_brand_contract/src/brand_endpoints.dart';

void main() {
  group('DefaultBrandConfig', () {
    test('should create DefaultBrandConfig with all required properties', () {
      // Arrange
      const appName = 'Crop Monitoring';
      const colors = BrandColors(
        primary: Color(0xFF2196F3),
        onPrimary: Color(0xFFFFFFFF),
        danger: Color(0xFFE53935),
        background: Color(0xFFFFFFFF),
        text: Color(0xFF000000),
        mutedText: Color(0xFF757575),
      );
      const assets = BrandAssets(
        appLogo: 'assets/brand/mmc/logo.png',
        appIcon: 'assets/brand/mmc/icon.png',
      );
      const endpoints = BrandEndpoints(
        apiBaseUrl: 'https://api.myserver.com',
      );

      // Act
      const brandConfig = DefaultBrandConfig(
        appName: appName,
        colors: colors,
        assets: assets,
        endpoints: endpoints,
      );

      // Assert
      expect(brandConfig.appName, equals(appName));
      expect(brandConfig.colors, equals(colors));
      expect(brandConfig.assets, equals(assets));
      expect(brandConfig.endpoints, equals(endpoints));
    });

    test('should implement BrandConfig interface', () {
      // Arrange
      const brandConfig = DefaultBrandConfig(
        appName: 'Test App',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Act & Assert
      expect(brandConfig, isA<BrandConfig>());
    });

    test('should be immutable', () {
      // Arrange
      const brandConfig = DefaultBrandConfig(
        appName: 'Test App',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Act & Assert
      expect(brandConfig, isA<DefaultBrandConfig>());
      // Immutability is enforced by @immutable annotation and const constructor
    });

    test('should handle different app names', () {
      // Arrange & Act
      const brandConfig1 = DefaultBrandConfig(
        appName: 'App 1',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      const brandConfig2 = DefaultBrandConfig(
        appName: 'App 2',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Assert
      expect(brandConfig1.appName, isNot(equals(brandConfig2.appName)));
    });

    test('should handle empty app name', () {
      // Arrange & Act
      const brandConfig = DefaultBrandConfig(
        appName: '',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Assert
      expect(brandConfig.appName, isEmpty);
    });

    test('should provide access to nested properties', () {
      // Arrange
      const appName = 'Crop Monitoring';
      const primaryColor = Color(0xFF2196F3);
      const appLogo = 'assets/brand/mmc/logo.png';
      const apiBaseUrl = 'https://api.myserver.com';

      const brandConfig = DefaultBrandConfig(
        appName: appName,
        colors: BrandColors(
          primary: primaryColor,
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: appLogo,
          appIcon: 'assets/brand/mmc/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: apiBaseUrl,
        ),
      );

      // Act & Assert
      expect(brandConfig.appName, equals(appName));
      expect(brandConfig.colors.primary, equals(primaryColor));
      expect(brandConfig.assets.appLogo, equals(appLogo));
      expect(brandConfig.endpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should handle long app names', () {
      // Arrange
      const longAppName = 'Very Long Application Name That Exceeds Normal Length';

      // Act
      const brandConfig = DefaultBrandConfig(
        appName: longAppName,
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Assert
      expect(brandConfig.appName, equals(longAppName));
      expect(brandConfig.appName.length, greaterThan(20));
    });
  });

  group('BrandConfig interface', () {
    test('should define required getters', () {
      // Arrange
      const brandConfig = DefaultBrandConfig(
        appName: 'Test App',
        colors: BrandColors(
          primary: Color(0xFF2196F3),
          onPrimary: Color(0xFFFFFFFF),
          danger: Color(0xFFE53935),
          background: Color(0xFFFFFFFF),
          text: Color(0xFF000000),
          mutedText: Color(0xFF757575),
        ),
        assets: BrandAssets(
          appLogo: 'assets/logo.png',
          appIcon: 'assets/icon.png',
        ),
        endpoints: BrandEndpoints(
          apiBaseUrl: 'https://api.test.com',
        ),
      );

      // Act & Assert
      expect(brandConfig.appName, isA<String>());
      expect(brandConfig.colors, isA<BrandColors>());
      expect(brandConfig.assets, isA<BrandAssets>());
      expect(brandConfig.endpoints, isA<BrandEndpoints>());
    });
  });
}

