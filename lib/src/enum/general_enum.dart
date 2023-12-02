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
  OUT_TEMP('Cihazda', 0, 'Cihazda'),
  OUT_WAIT('Onay Bekliyor', 1, 'Onay Bekliyor'),
  OUT_ACCEPT('Onaylandı', 2, 'Onaylandı'),
  OUT_KITCHEN('Hazırlanıyor', 3, 'Hazırlanıyor'),
  OUT_READY('Hazırlandı', 4, 'Hazırlandı'),
  OUT_ON_WAY('Yolda', 5, 'Yolda'),
  OUT_DELIVERYOK('Teslim Edildi', 6, 'Teslim Edildi'),
  OUT_COMPLETE('Tamamlandı', 7, 'Tamamlandı'),
  OUT_CANCEL('İptal', 8, 'İptal');

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
  GET_ACCEPT('Onaylandı', 2, 'Onaylandı'),
  GET_KITCHEN('Hazırlanıyor', 3, 'Hazırlanıyor'),
  GET_READY('Kasada Hazır', 4, 'Kasada Hazır'),
  GET_COMPLETE('Tamamlandı', 5, 'Tamamlandı'),
  GET_CANCEL('İptal', 6, 'İptal');

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
  IN_TEMP('Cihazda', 1, 'Cihazda'),
  IN_WAIT('Bekliyor', 2, 'Bekliyor'),
  IN_ACCEPT('Onaylandı', 3, 'Onaylandı'),
  IN_KITCHEN('Hazırlanıyor', 4, 'Hazırlanıyor'),
  IN_TABLE('Masada', 5, 'Masada'),
  IN_COMPLETE('Tamamlandı', 6, 'Tamamlandı'),
  IN_CANCEL('İptal', 7, 'İptal');

  final int level;
  final String event;
  final String title;

  const TableOrderStatus(this.title, this.level, this.event);
}

/// Service status id
enum ServiceStatusEnum {
  IN_TEMP('Cihazda', 1, 'Cihazda'),
  IN_WAIT('Onay Bekliyor', 2, 'Onay Bekliyor'), //"Onay Bekliyor"
  WAIT('Bekliyor', 3, 'Bekliyor'), //"Bekliyor"
  IN_ACCEP('Onaylandı', 4, 'Onaylandı'), //"Onaylandı"
  IN_KITCHEN('Hazırlanıyor', 5, 'Hazırlanıyor'), //"Hazırlanan Sipariş Var"
  IN_TABLE('Masada', 6, 'Masada'), //"Siparişler Masada"
  IN_COMPLETE('Tamamlandı', 7, 'Tamamlandı'), //Tüm Siparişler Ödendi"
  IN_CANCEL('İptal Edildi', 8, 'İptal Edildi'), //"İptal Edildi"
  CLOSE('Kapatıldı', 9, 'Kapatıldı'); //"Kapatıldı"

  final int level;
  final String event;
  final String title;

  const ServiceStatusEnum(this.title, this.level, this.event);
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
