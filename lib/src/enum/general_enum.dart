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
  OUT_TEMP(0),
  OUT_WAIT(1),
  OUT_ACCEPT(2),
  OUT_KITCHEN(3),
  OUT_ON_WAY(4),
  OUT_DELIVERYOK(5),
  OUT_COMPLETE(6),
  OUT_CANCEL(7);

  int level;
  const TakeOutOrderStatus(this.level);
}

/// [GET_TEMP] Cihazda
/// [GET_WAIT] Bekliyor
/// [GET_ACCEPT] Onaylandı
/// [GET_KITCHEN] Hazırlanıyor
/// [GET_READY] Kasada Hazır
/// [GET_COMPLETE] Tamamlandı
/// [GET_CANCEL] İptal
enum GetInOrderStatus { GET_TEMP, GET_WAIT, GET_ACCEPT, GET_KITCHEN, GET_READY, GET_COMPLETE, GET_CANCEL }

/// [IN_TEMP] Cihazda
/// [IN_WAIT],[WAIT] Bekliyor
/// [IN_ACCEPT] Onaylandı
/// [IN_KITCHEN] Hazırlanıyor
/// [IN_TABLE] Masada
/// [IN_COMPLETE] Tamamlandı
/// [IN_CANCEL] İptal
enum TableOrderStatus { IN_TEMP, IN_WAIT, IN_ACCEPT, IN_KITCHEN, IN_TABLE, IN_COMPLETE, IN_CANCEL }

/// [TimeoutAction] Dealer de Masa TimeOut durumu
/// [None] Sepete Ilk eklemede ekleyeceğmiz durum
/// [New] Yeni Service Başlatmak istiyorum
/// [Add] Masaya açık olan service devam etmek istiyorum
enum TimeoutAction { None, New, Add }

/// [AddressTypeEnum] Adres türleri
enum AddressTypeEnum { home, work, hotel, other }

/// Http işlemerinde kullanılmakta
enum HttpMethod { get, post, put, delete, update }

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

