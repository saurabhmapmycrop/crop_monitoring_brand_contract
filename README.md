# crop_monitoring_brand_contract

A shared **brand contract** (interfaces + data models) for Crop Monitoring Flutter apps.

This package defines the structure for:
- **Brand colors**
- **Brand assets**
- **Brand endpoints**
- **Brand config interface**

Other packages (example: `crop_monitoring_brand_mmc`, `crop_monitoring_brand_other`) implement this contract, and the core app (`app_core`) depends only on this contract to stay brand-agnostic.

---

## Features

- Defines `BrandConfig` contract used by the app/core layer.
- Provides immutable models:
    - `BrandColors`
    - `BrandAssets`
    - `BrandEndpoints`
- Includes `DefaultBrandConfig` for easy brand implementations.

---

## Getting started

### Add dependency (Git)

In your app/package `pubspec.yaml`:

```yaml
dependencies:
  crop_monitoring_brand_contract:
    git:
      url: https://github.com/saurabhmapmycrop/crop_monitoring_brand_contract.git
      ref: v0.1.0