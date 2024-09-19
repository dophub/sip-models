/// [DeliveryType] Teslimat türü
/// [TAKEOUT] Adrese teslim
/// [GETIN] Gel al servis
/// [TABLE] Masaya
enum DeliveryType { TAKEOUT, GETIN, TABLE }

/// [ItemSeparatorType] List Item lar arasındaki boşluk türüdür
/// [Space] Boşluk olsun
/// [Divider] Çizgi olsun
enum ItemSeparatorType { Space, Divider }

/// [SizeType] Uygulamanın farklı yerlerinde kullanılan boyut türleri
enum SizeType { XS, S, L, XL }

/// [PriceType] Fiyat Türleri
/// [TABLE] => Masadan Ödeme
/// [TAKEOUT] => Adrese Teslim
/// [GETIN] => Gel Al
enum PriceType { TABLE, TAKEOUT, GETIN }

/// [ProductType] Stok Türü
/// [PRODUCT] Normal Ürün
/// [PROMOTION_MENU] Promosyonlu ürün
enum ItemType { PRODUCT, PROMOTION_MENU }

/// [OptionType] Option türü
/// [OPTION] Item olmayan option
/// [FEATURE] Item olan option
enum OptionType { OPTION, FEATURE }

/// [PaymentOnlineType] Option türü
/// [offline] kapıda ödeme VS..
/// [online] KrediKartı VS..
enum PaymentOnlineType { offline, online }

enum DeviceType { IOS, ANDROID, WINDOWS, FUCHSIA, MACOS , WEB}

/// [SSOTypeId] Google veya apple ile gieiş yapıldığında türünü belirlemekte
enum SSOTypeId { google, apple }

/// [OrderSocketType] Socketi dinlerken gelen data nın tipi
/// [SERVICE] Masa modülünde service te güncelleme olduğunda
/// [ORDER] Active order de
/// [MOVE_TABLE] Masa taşıması yapıldığında
enum OrderSocketType { SERVICE, ORDER, MOVE_TABLE }

/// [TableTipVisibilityType] Bahşiş gösterme şekli
/// [INLINE] Direk ekranda gösterilecek
/// [POPUP] Bottom sheet e gösterilecek
enum TableTipVisibilityType { INLINE, POPUP }

/// [TableServiceType] Self servis modulunde Masaya servis tipi
/// [SS] Self service (kendin gidip alıyorsun)
/// [TABLE] Masa ya servis (Garson masa ya servic ediyor)
enum TableServiceType {
  SS('Self Servis'),
  TABLE('Masaya Servis'),
  GETIN('Paket');

  final String title;

  const TableServiceType(this.title);
}
