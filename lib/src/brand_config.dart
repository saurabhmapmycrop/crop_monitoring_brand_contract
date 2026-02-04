import 'package:flutter/foundation.dart';
import 'brand_assets.dart';
import 'brand_colors.dart';
import 'brand_endpoints.dart';
import 'app_environment.dart';

abstract class BrandConfig {
  String get appName;
  BrandColors get colors;
  BrandAssets get assets;

  /// Endpoints depend on environment (dev/uat/prod).
  BrandEndpoints endpoints(AppEnvironment env);
}

@immutable
class DefaultBrandConfig implements BrandConfig {
  const DefaultBrandConfig({
    required this.appName,
    required this.colors,
    required this.assets,
    required this.endpointsByEnv,
  });

  @override
  final String appName;

  @override
  final BrandColors colors;

  @override
  final BrandAssets assets;

  /// Provide endpoints for each env.
  final Map<AppEnvironment, BrandEndpoints> endpointsByEnv;

  @override
  BrandEndpoints endpoints(AppEnvironment env) =>
      endpointsByEnv[env] ?? endpointsByEnv[AppEnvironment.dev]!;
}