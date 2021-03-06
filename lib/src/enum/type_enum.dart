
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