/// [LoadingStatus] state management te kullanılan yüklenme durumları.
/// [ApiStatus] Api den gelen status durumları.
/// [BaseModelStatus] BL katmanı ile Controleller katmanı arasındaki (HttpStatus) API Durumlarını 'dır.
enum LoadingStatus { Init, Loading, Loaded, Error }

enum ApiStatus { success, fail, loading, wait, init }

enum CustomerStatusId { COMPLETE, WAIT }

enum BaseModelStatus { Ok, Error, Action, UnprocessableEntity, TimeOut, NotFound, Found }

/// WebView Ödeme callback query parameters enum
enum PaymentQueryParametersStatus { FAIL, SUCCESS }

/// String değerler verip [ApiStatus] türünde değişken almak için yazıldı
const Map<String, ApiStatus> stringToApiStatusMap = {
  'init': ApiStatus.init,
  'fail': ApiStatus.fail,
  'wait': ApiStatus.wait,
  'loading': ApiStatus.loading,
  'success': ApiStatus.success
};
