
enum ApiLocalizationKeyEnum {
  DELIVERY_SS_TEXT, //	Teslimat tipi Self-Servis buton metni
  DELIVERY_TABLE_TEXT, //	Teslimat tipi Masaya Servis buton metni
  SET_ORDER_POINT_TEXT, //	Sipariş noktası değiştirme butonunun metni
  LANDING_BUTTON_TEXT, //	Landing Page Siparişe Başlama butonu metni
  DELIVERY_SET_TITLE, //	Teslimat tipi seçme başlık metni
  DELIVERY_SET_SUB_TITLE, //	Teslimat tipi seçme alt başlık metni
  KIOSK_SKIP_PHONE_BUTTON_TEXT, //	Kioskda cep telefonunu atlama butonundaki metin
  CASE_NO_SYNC_MSG, //	self service iptal popup mesajı
}

enum DealerSettingItemTypeEnum { dropdown, checkbox, textbox }

enum MenuVisStatusEnum { show, hide, hideTitle }

enum PrinterFontSizeEnum {
  XS(1),
  SM(2),
  MD(3),
  LG(4),
  XL(5);

  final int level;

  const PrinterFontSizeEnum(this.level);
}
