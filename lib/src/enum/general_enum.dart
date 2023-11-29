enum AppEnvironment {
  Development,
  Staging,
  Production,
}

/// [OUT_TEMP] Cihazda
/// [OUT_WAIT] Onay Bekliyor
/// [OUT_ACCEPT] Onaylandı
/// [OUT_KITCHEN] Hazırlanıyor
/// [OUT_ON_WAY] Yolda
/// [OUT_DELIVERYOK] Teslim Edildi
/// [OUT_COMPLETE] Tamamlandı
/// [OUT_CANCEL] İptal
enum TakeOutOrderStatus {
  OUT_TEMP('Cihazda', 0, 'Cihazda'),
  OUT_WAIT('Onay Bekliyor', 1, 'Beklemede'),
  OUT_ACCEPT('Onaylandı', 2, 'Onayla'),
  OUT_KITCHEN('Hazırlanıyor', 3, 'Hazırlanıyor'),
  OUT_ON_WAY('Yolda', 4, 'Yola Çıkart'),
  OUT_DELIVERYOK('Teslim Edildi', 5, 'Teslim Et'),
  OUT_COMPLETE('Tamamlandı', 6, 'Tamamla'),
  OUT_CANCEL('İptal', 7, 'İptal Et');

  final int level;
  final String event;
  final String title;

  const TakeOutOrderStatus(this.title, this.level, this.event);
}

/// [GET_TEMP] Cihazda
/// [GET_WAIT] Bekliyor
/// [GET_ACCEPT] Onaylandı
/// [GET_KITCHEN] Hazırlanıyor
/// [GET_READY] Kasada Hazır
/// [GET_COMPLETE] Tamamlandı
/// [GET_CANCEL] İptal
enum GetInOrderStatus {
  GET_TEMP('Cihazda', 0, 'Cihazda'),
  GET_WAIT('Bekliyor', 1, 'Beklemede'),
  GET_ACCEPT('Onaylandı', 2, 'Onayla'),
  GET_KITCHEN('Hazırlanıyor', 3, 'Hazırlanıyor'),
  GET_READY('Kasada Hazır', 4, 'Hazır'),
  GET_COMPLETE('Tamamlandı', 5, 'Tamamla'),
  GET_CANCEL('İptal', 6, 'İptal Et');

  final int level;
  final String event;
  final String title;

  const GetInOrderStatus(this.title, this.level, this.event);
}

/// [IN_TEMP] Cihazda
/// [IN_WAIT],[WAIT] Bekliyor
/// [IN_ACCEPT] Onaylandı
/// [IN_KITCHEN] Hazırlanıyor
/// [IN_TABLE] Masada
/// [IN_COMPLETE] Tamamlandı
/// [IN_CANCEL] İptal
enum TableOrderStatus {
  IN_TEMP('Cihazda',0, 'Cihazda'),
  IN_WAIT('Bekliyor',0, 'Bekliyor'),
  IN_ACCEPT('Onaylandı',0, 'Onayla'),
  IN_KITCHEN('Hazırlanıyor',0, 'Hazırla'),
  IN_TABLE('Masada',0, 'Masada'),
  IN_COMPLETE('Tamamlandı',0, 'Tamamla'),
  IN_CANCEL('İptal',0, 'İptal Et');

  final int level;
  final String event;
  final String title;

  const TableOrderStatus(this.title, this.level, this.event);
}

/// Service status id
enum ServiceStatusEnum {
  WAIT, //"Bekliyor"
  IN_TABLE, //"Siparişler Masada"
  IN_COMPLETE, //Tüm Siparişler Ödendi"
  IN_KITCHEN, //"Hazırlanan Sipariş Var"
  IN_TEMP, // "Gönderilecek Sipariş Var"
  IN_WAIT, //"Onay Bekliyor"
  IN_CANCEL, //"İptal Edildi"
  IN_ACCEPT, //"Onaylandı"
  CLOSE, //"Kapatıldı"
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
