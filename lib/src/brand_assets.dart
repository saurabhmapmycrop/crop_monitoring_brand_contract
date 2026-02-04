
import 'package:flutter/foundation.dart';

@immutable
class BrandAssets {
  const BrandAssets({
    required this.appLogo,
    required this.appIcon,
  });

  final String appLogo; // e.g. 'assets/brand/mmc/logo.png'
  final String appIcon; // e.g. 'assets/brand/mmc/icon.png'
}