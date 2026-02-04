import 'package:flutter/foundation.dart';

@immutable
class BrandEndpoints {
  const BrandEndpoints({
    required this.apiBaseUrl,

  });

  final String apiBaseUrl;        // e.g. https://api.myserver.com

}