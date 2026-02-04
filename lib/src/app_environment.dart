enum AppEnvironment { dev, uat, prod }

extension AppEnvironmentX on AppEnvironment {
  String get name => switch (this) {
    AppEnvironment.dev => 'dev',
    AppEnvironment.uat => 'uat',
    AppEnvironment.prod => 'prod',
  };

  static AppEnvironment fromString(String value) {
    switch (value.trim().toLowerCase()) {
      case 'prod':
      case 'production':
        return AppEnvironment.prod;
      case 'uat':
        return AppEnvironment.uat;
      case 'dev':
      default:
        return AppEnvironment.dev;
    }
  }
}