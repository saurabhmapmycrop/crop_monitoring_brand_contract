import 'package:flutter/foundation.dart';
import 'brand_assets.dart';
import 'brand_colors.dart';
import 'brand_endpoints.dart';

/// This is the contract that app_core will depend on.
/// Each brand package (brand_mmc, brand_other) will implement this.
abstract class BrandConfig {
  String get appName;
  BrandColors get colors;
  BrandAssets get assets;
  BrandEndpoints get endpoints;
}

/// Optional simple implementation (you can use it or ignore it)
@immutable
class DefaultBrandConfig implements BrandConfig {
  const DefaultBrandConfig({
    required this.appName,
    required this.colors,
    required this.assets,
    required this.endpoints,
  });

  @override
  final String appName;

  @override
  final BrandColors colors;

  @override
  final BrandAssets assets;

  @override
  final BrandEndpoints endpoints;
}