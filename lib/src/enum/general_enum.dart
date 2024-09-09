enum AppEnvironment { Development, Staging, Production }

/// [OUT_TEMP] Cihazda
/// [OUT_WAIT] Onay Bekliyor
/// [OUT_ACCEPT] Onaylandı
/// [OUT_KITCHEN] Hazırlanıyor
/// [OUT_ON_WAY] Yolda
/// [OUT_DELIVERYOK] Teslim Edildi
/// [OUT_COMPLETE] Tamamlandı
/// [OUT_CANCEL] İptal
enum TakeOutOrderStatus {
  OUT_TEMP('Cihazda', 0, 'Cihazda', false, Duration(minutes: 0), 'Cihazda'),
  OUT_WAIT('Onay Bekliyor', 1, 'Onay Bekliyor', true, Duration(minutes: 0), 'Onay Bekliyor'),
  OUT_ACCEPT('Onaylandı', 2, 'Onayla', true, Duration(minutes: 0), 'Onayla'),
  OUT_KITCHEN('Hazırlanıyor', 3, 'Mutfağa Gönder', true, Duration(minutes: 0), 'Depoya Gönder'),
  OUT_READY('Hazırlandı', 4, 'Hazırlandı', true, Duration(minutes: 4), 'Hazırlandı'),
  OUT_ON_WAY('Yolda', 5, 'Kuryeye Verildi', true, Duration(minutes: 4), 'sevkiyata Verildi'),
  OUT_DELIVERYOK('Teslim Edildi', 6, 'Teslim Edildi', true, Duration(minutes: 4), 'Teslim Edildi'),
  OUT_COMPLETE('Tamamlandı', 7, 'Tamamlandı', true, Duration(minutes: 4), 'Tamamlandı'),
  OUT_CANCEL('İptal', 8, 'İptal', false, Duration(minutes: 4), 'İptal'),
  OUT_REJECT('Reddedildi', 9, 'Reddedildi', false, Duration(minutes: 4), 'Reddedildi');

  final int level;
  final String event;
  final String title;
  final String depotEvent;
  final bool visibleForUser;
  final Duration duration; // güncelleme tarihinden itibaren ne kadar süre sonra bu statusa geçilebilir

  const TakeOutOrderStatus(this.title, this.level, this.event, this.visibleForUser, this.duration, this.depotEvent);
}

enum OrderStatusGroup {
  TEMP('Cihazda'),
  WAIT('Onay Bekliyor'),
  ACCEPT('Onaylandı'),
  KITCHEN('Hazırlanıyor'),
  READY('Hazırlandı'),
  ON_WAY('Yolda'),
  DELIVERYOK('Teslim Edildi'),
  COMPLETE('Tamamlandı'),
  CANCEL('İptal'),
  REJECT('Reddedildi');

  final String title;

  const OrderStatusGroup(this.title);
}

/// [GET_TEMP] Cihazda
/// [GET_WAIT] Bekliyor
/// [GET_ACCEPT] Onaylandı
/// [GET_KITCHEN] Hazırlanıyor
/// [GET_READY] Kasada Hazır
/// [GET_COMPLETE] Tamamlandı
/// [GET_CANCEL] İptal
enum GetInOrderStatus {
  GET_TEMP('Cihazda', 0, 'Cihazda', false),
  GET_WAIT('Bekliyor', 1, 'Beklemede', true),
  GET_ACCEPT('Onaylandı', 2, 'Onaylandı', true),
  GET_KITCHEN('Hazırlanıyor', 3, 'Hazırlanıyor', true),
  GET_READY('Kasada Hazır', 4, 'Kasada Hazır', true),
  GET_COMPLETE('Tamamlandı', 5, 'Tamamlandı', true),
  GET_CANCEL('İptal', 6, 'İptal', false),
  GET_REJECT('Reddedildi', 7, 'Reddedildi', false);

  final int level;
  final String event;
  final String title;
  final bool visibleForUser;

  const GetInOrderStatus(this.title, this.level, this.event, this.visibleForUser);
}

/// [IN_TEMP] Cihazda
/// [IN_WAIT],[WAIT] Bekliyor
/// [IN_ACCEPT] Onaylandı
/// [IN_KITCHEN] Hazırlanıyor
/// [IN_TABLE] Masada
/// [IN_COMPLETE] Tamamlandı
/// [IN_CANCEL] İptal
enum TableOrderStatus {
  IN_TEMP('Cihazda', 1, 'Cihazda', false),
  IN_WAIT('Bekliyor', 2, 'Bekliyor', true),
  IN_ACCEPT('Onaylandı', 3, 'Onaylandı', true),
  IN_KITCHEN('Hazırlanıyor', 4, 'Hazırlanıyor', true),
  IN_TABLE('Masada', 5, 'Masada', true),
  IN_COMPLETE('Tamamlandı', 6, 'Tamamlandı', true),
  IN_CANCEL('İptal', 7, 'İptal', false);

  final int level;
  final String event;
  final String title;
  final bool visibleForUser;

  const TableOrderStatus(this.title, this.level, this.event, this.visibleForUser);
}

/// Service status id
enum ServiceStatusEnum {
  IN_TEMP('Cihazda', 1, 'Cihazda', false),
  IN_WAIT('Onay Bekliyor', 2, 'Onay Bekliyor', true),
  WAIT('Bekliyor', 3, 'Bekliyor', false),
  IN_ACCEP('Onaylandı', 4, 'Onaylandı', true),
  IN_KITCHEN('Hazırlanıyor', 5, 'Hazırlanıyor', true),
  IN_TABLE('Masada', 6, 'Masada', true),
  IN_COMPLETE('Tamamlandı', 7, 'Tamamlandı', true),
  IN_CANCEL('İptal Edildi', 8, 'İptal Edildi', false),
  CLOSE('Kapatıldı', 9, 'Kapatıldı', false);

  final int level;
  final String event;
  final String title;
  final bool visibleForUser;

  const ServiceStatusEnum(this.title, this.level, this.event, this.visibleForUser);
}

/// [TimeoutAction] Dealer de Masa TimeOut durumu
/// [None] Sepete Ilk eklemede ekleyeceğmiz durum
/// [New] Yeni Service Başlatmak istiyorum
/// [Add] Masaya açık olan service devam etmek istiyorum
enum TimeoutAction { None, New, Add }

/// [AddressTypeEnum] Adres türleri
enum AddressTypeEnum {
  home('Ev'),
  work('İş'),
  hotel('Otel'),
  other('Diğer');

  final String title;

  const AddressTypeEnum(this.title);
}

/// Http işlemerinde kullanılmakta
enum HttpMethod { get, post, put, delete, update }
