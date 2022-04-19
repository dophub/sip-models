enum AppEnvironment {
  Development,
  Staging,
  Production,
}

/// [RemoteConfigKey] Firabase remote Config Key leri
/// [remote_ios_version] ios güncel uygulama versiyonu
/// [force_update_ios] ios zorunlu güncelleme
/// [ios_market_link] ios market link
/// [ios_force_update_message] ios güncelleme mesajı
/// [remote_android_version] android güncel versiyon
/// [force_update_android] android zorunlu güncelleme
/// [android_market_link] android uygulama linki
/// [android_force_update_message] android uygulama güncelleme mesajı
/// [enable_login] Kullanıcı girişi
/// [enable_login_false_message] Kullanıcı giriş yapamadığında çıkacan mesaj
/// [enable_marketplace] marketplace modülü aktif pasif
/// [enable_marketplace_false_message] Kullanıcı marketplace girmediğinde çıkacan mesaj
/// [enable_dealer] dealer modülü aktif pasif
/// [enable_dealer_false_message] Kullanıcı dealere girmediğinde çıkacan mesaj
enum RemoteConfigKey {
  remote_ios_version,
  force_update_ios,
  ios_market_link,
  ios_force_update_message,
  remote_android_version,
  force_update_android,
  android_market_link,
  android_force_update_message,
  enable_login,
  enable_login_false_message,
  enable_marketplace,
  enable_marketplace_false_message,
  enable_dealer,
  enable_dealer_false_message,
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
  OUT_TEMP,
  OUT_WAIT,
  OUT_ACCEPT,
  OUT_KITCHEN,
  OUT_ON_WAY,
  OUT_DELIVERYOK,
  OUT_COMPLETE,
  OUT_CANCEL
}

/// [GET_TEMP] Cihazda
/// [GET_WAIT] Bekliyor
/// [GET_ACCEPT] Onaylandı
/// [GET_KITCHEN] Hazırlanıyor
/// [GET_READY] Kasada Hazır
/// [GET_COMPLETE] Tamamlandı
/// [GET_CANCEL] İptal
enum GetInOrderStatus {
  GET_TEMP,
  GET_WAIT,
  GET_ACCEPT,
  GET_KITCHEN,
  GET_READY,
  GET_COMPLETE,
  GET_CANCEL
}

/// [IN_TEMP] Cihazda
/// [IN_WAIT] Bekliyor
/// [IN_ACCEPT] Onaylandı
/// [IN_KITCHEN] Hazırlanıyor
/// [IN_TABLE] Masada
/// [IN_COMPLETE] Tamamlandı
/// [IN_CANCEL] İptal
enum TableOrderStatus {
  IN_TEMP,
  IN_WAIT,
  IN_ACCEPT,
  IN_KITCHEN,
  IN_TABLE,
  IN_COMPLETE,
  IN_CANCEL
}


/// [TimeoutAction] Dealer de Masa TimeOut durumu
/// [None] Sepete Ilk eklemede ekleyeceğmiz durum
/// [New] Yeni Service Başlatmak istiyorum
/// [Add] Masaya açık olan service devam etmek istiyorum
enum TimeoutAction { None, New, Add }

/// [AddressTypeEnum] Adres türleri
enum AddressTypeEnum { home, work, hotel, other }
