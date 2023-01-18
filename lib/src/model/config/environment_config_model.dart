
import 'package:sip_models/enum.dart';

/// Environment ler için yazılan model
/// Ortamlara ayırmak istediğimiz tüm ayarları bu nodelle yazıyoruz
///
/// [environment] Ortam 'Environment'
/// [lokiUrl] Loki log url
/// [serviceSocketUrl] Masa modulunde service socket url i
class EnvironmentConfigModel {
  EnvironmentConfigModel({
    this.appName,
    required this.environment,
    required this.apiBaseUrl,
    required this.lokiUrl,
    required this.serviceSocketUrl,
  });

  final String? appName;
  final AppEnvironment environment;
  final String apiBaseUrl;
  final String lokiUrl;
  final String serviceSocketUrl;
}
