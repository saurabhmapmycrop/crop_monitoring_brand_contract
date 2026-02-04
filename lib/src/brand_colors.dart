import 'package:flutter/material.dart';

@immutable
class BrandColors {
  const BrandColors({
    required this.primary,
    required this.onPrimary,
    required this.danger,
    required this.background,
    required this.text,
    required this.mutedText,
  });

  final Color primary;
  final Color onPrimary;
  final Color danger;
  final Color background;
  final Color text;
  final Color mutedText;
}