
import 'package:sip_models/enum.dart';

/// Environment ler için yazılan model
/// Ortamlara ayırmak istediğimiz tüm ayarları bu nodelle yazıyoruz
///
/// [environment] Ortam 'Environment'
/// [sentryDsn] Sentrey DSN
/// [sentryDsn] Base Url
///
class EnvironmentConfigModel {
  EnvironmentConfigModel({
    this.appName,
    required this.environment,
    required this.apiBaseUrl,
    required this.sentryDsn,
  });

  final String? appName;
  final AppEnvironment environment;
  final String apiBaseUrl;
  final String sentryDsn;
}
