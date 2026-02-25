import 'dart:ui' show Color;

import 'package:flutter/material.dart' show Colors;

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

enum MenuVisStatusEnum { show, hide, hideTitle, hideMenuAndVisibilityBtn }

enum PrinterFontSizeEnum {
  XS(1),
  SM(2),
  MD(3),
  LG(4),
  XL(5);

  final int level;

  const PrinterFontSizeEnum(this.level);
}

enum PaymentTypeEnum {
  CASH('Nakit'),
  PAYCELLCARD('Paycell Kredi Kartı'),
  PAYCELLCASH('Paycell Nakit'),
  QRWALLET('QR Yükleme'),
  CARD('Kredi Kartı'),
  WALLETONLINE('Cüzdan'),
  PAVOCARD('Pavo Kredi Kartı'),
  PAVOCASH('Pavo Nakit'),
  PAYCELLQR('Paycell QR'),
  CASHPOS('Fiziki POS Nakit'),
  CARDPOS('Fiziki POS Kredi Kartı'),
  CARD2('Paycell Sanal Pos'),
  NKOLAY('NKolay Online'),
  LOYALTY('Para Puan');

  final String title;

  const PaymentTypeEnum(this.title);
}

enum PaymentTransactionsStatusEnum {
  COMPLETED("Tamamlandı", Color(0xFF2E7D32)),
  WAITING("Beklemede", Color(0xFF1565C0)),
  PENDING("İşlem Sürüyor", Color(0xFF42A5F5)),
  ERROR("Hata", Color(0xFFD32F2F)),
  CANCEL("İptal Edildi", Color(0xFF616161)),
  REVERSAL("İade Edildi", Color(0xFF8E24AA));

  final String title;
  final Color color;

  const PaymentTransactionsStatusEnum(this.title, this.color);
}

enum PrintTemplateIdEnum {
  KITCHEN('Mutfak order printer.'),
  TABLE('Masa order printer'),
  TAKEOUT('Sipariş order printer'),
  DEMO('Demo order printer'),
  SELFSERVICE('selfservis order printer'),
  GETIN('GelAl order printer');

  final String title;

  const PrintTemplateIdEnum(this.title);
}

enum OrderItemPaymentStatus {
  WAITING, //	Bekliyor
  SUCCESS, //Tamamlandı
  CANCEL, // İptal
  REFUND, //	Iade
  ERROR, //	Hatalı
}
