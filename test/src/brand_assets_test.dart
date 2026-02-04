import 'package:flutter_test/flutter_test.dart';
import 'package:crop_monitoring_brand_contract/src/brand_assets.dart';

void main() {
  group('BrandAssets', () {
    test('should create BrandAssets with required properties', () {
      // Arrange
      const appLogo = 'assets/brand/mmc/logo.png';
      const appIcon = 'assets/brand/mmc/icon.png';

      // Act
      const brandAssets = BrandAssets(
        appLogo: appLogo,
        appIcon: appIcon,
      );

      // Assert
      expect(brandAssets.appLogo, equals(appLogo));
      expect(brandAssets.appIcon, equals(appIcon));
    });

    test('should be immutable', () {
      // Arrange
      const brandAssets = BrandAssets(
        appLogo: 'assets/brand/mmc/logo.png',
        appIcon: 'assets/brand/mmc/icon.png',
      );

      // Act & Assert
      expect(brandAssets, isA<BrandAssets>());
      // Immutability is enforced by @immutable annotation and const constructor
    });

    test('should handle different asset paths', () {
      // Arrange & Act
      const brandAssets1 = BrandAssets(
        appLogo: 'assets/brand/mmc/logo.png',
        appIcon: 'assets/brand/mmc/icon.png',
      );

      const brandAssets2 = BrandAssets(
        appLogo: 'assets/brand/other/logo.png',
        appIcon: 'assets/brand/other/icon.png',
      );

      // Assert
      expect(brandAssets1.appLogo, isNot(equals(brandAssets2.appLogo)));
      expect(brandAssets1.appIcon, isNot(equals(brandAssets2.appIcon)));
    });

    test('should handle empty strings', () {
      // Arrange & Act
      const brandAssets = BrandAssets(
        appLogo: '',
        appIcon: '',
      );

      // Assert
      expect(brandAssets.appLogo, isEmpty);
      expect(brandAssets.appIcon, isEmpty);
    });

    test('should handle long asset paths', () {
      // Arrange
      const longPath = 'assets/brand/very/long/path/to/logo/file.png';

      // Act
      const brandAssets = BrandAssets(
        appLogo: longPath,
        appIcon: longPath,
      );

      // Assert
      expect(brandAssets.appLogo, equals(longPath));
      expect(brandAssets.appIcon, equals(longPath));
    });
  });
}

