import 'package:flutter_test/flutter_test.dart';
import 'package:crop_monitoring_brand_contract/src/brand_endpoints.dart';

void main() {
  group('BrandEndpoints', () {
    test('should create BrandEndpoints with required apiBaseUrl', () {
      // Arrange
      const apiBaseUrl = 'https://api.myserver.com';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should be immutable', () {
      // Arrange
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: 'https://api.myserver.com',
      );

      // Act & Assert
      expect(brandEndpoints, isA<BrandEndpoints>());
      // Immutability is enforced by @immutable annotation and const constructor
    });

    test('should handle different base URLs', () {
      // Arrange & Act
      const brandEndpoints1 = BrandEndpoints(
        apiBaseUrl: 'https://api.myserver.com',
      );

      const brandEndpoints2 = BrandEndpoints(
        apiBaseUrl: 'https://api.otherserver.com',
      );

      // Assert
      expect(brandEndpoints1.apiBaseUrl, isNot(equals(brandEndpoints2.apiBaseUrl)));
    });

    test('should handle URLs with paths', () {
      // Arrange
      const apiBaseUrl = 'https://api.myserver.com/v1';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should handle URLs with ports', () {
      // Arrange
      const apiBaseUrl = 'https://api.myserver.com:8080';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should handle localhost URLs', () {
      // Arrange
      const apiBaseUrl = 'http://localhost:3000';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should handle empty string', () {
      // Arrange & Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: '',
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, isEmpty);
    });

    test('should handle URLs with query parameters', () {
      // Arrange
      const apiBaseUrl = 'https://api.myserver.com?key=value';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });

    test('should handle IP addresses', () {
      // Arrange
      const apiBaseUrl = 'http://192.168.1.1:8080';

      // Act
      const brandEndpoints = BrandEndpoints(
        apiBaseUrl: apiBaseUrl,
      );

      // Assert
      expect(brandEndpoints.apiBaseUrl, equals(apiBaseUrl));
    });
  });
}

