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
  OUT_TEMP('Cihazda', 0, 'Cihazda', false),
  OUT_WAIT('Onay Bekliyor', 1, 'Onay Bekliyor', true),
  OUT_ACCEPT('Onaylandı', 2, 'Onayla', true),
  OUT_KITCHEN('Hazırlanıyor', 3, 'Mutfağa Gönder', true),
  OUT_READY('Hazırlandı', 4, 'Hazırlandı', true),
  OUT_ON_WAY('Yolda', 5, 'Kuryeye Verildi', true),
  OUT_DELIVERYOK('Teslim Edildi', 6, 'Teslim Edildi', true),
  OUT_COMPLETE('Tamamlandı', 7, 'Tamamlandı', true),
  OUT_CANCEL('İptal', 8, 'İptal', false),
  OUT_REJECT('Reddedildi', 9, 'Reddedildi', false);

  final int level;
  final String event;
  final String title;
  final bool visibleForUser;

  const TakeOutOrderStatus(this.title, this.level, this.event, this.visibleForUser);
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
enum AddressTypeEnum { home, work, hotel, other }

/// Http işlemerinde kullanılmakta
enum HttpMethod { get, post, put, delete, update }
