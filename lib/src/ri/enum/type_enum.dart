// ignore_for_file: constant_identifier_names

enum OptionType { OPTION, FEATURE }

enum Valet { IN_VALET, WAITING_FOR_GET, DONE }

enum AllOrderTypeStatusEnum {
  //TABLE
  IN_TEMP('Cihazda'),
  IN_WAIT('Bekliyor'),
  IN_ACCEPT('Onaylandı'),
  IN_KITCHEN('Hazırlanıyor'),
  IN_TABLE('Masada'),
  IN_COMPLETE('Tamamlandı'),
  IN_CANCEL('İptal'),

  //TAKEOUT
  OUT_TEMP('Cihazda'),
  OUT_WAIT('Onay Bekliyor'),
  OUT_ACCEPT('Onaylandı'),
  OUT_KITCHEN('Hazırlanıyor'),
  OUT_READY('Hazırlandı'),
  OUT_ON_WAY('Yolda'),
  OUT_DELIVERYOK('Teslim Edildi'),
  OUT_COMPLETE('Tamamlandı'),
  OUT_CANCEL('İptal'),
  OUT_REJECT('Reddedildi'),
  //GET_IN
  GET_TEMP('Cihazda'),
  GET_WAIT('Bekliyor'),
  GET_ACCEPT('Onaylandı'),
  GET_KITCHEN('Hazırlanıyor'),
  GET_READY('Kasada Hazır'),
  GET_COMPLETE('Tamamlandı'),
  GET_CANCEL('İptal'),
  GET_REJECT('Reddedildi');

  final String title;

  const AllOrderTypeStatusEnum(this.title);
}

enum OrderCancelReasonEnum {
  MH_IPTAL, // "Müşteri hizmetleri arayıp iptal etti.",
  SAAT_IPTAL, //"Restoran kapanmaya yakın olduğundan kabul etmedi.",
  ISLETME_IPTAL, //"Restoran yetkilisi siparişi butona basarak reddetti.",
  URUN_YOK, //"Ürün Stokta Yok",
  ZAMAN_ASIMI //"Zaman aşımına uğradı",
}

enum QrStatusEnum { ASSIGNED, NOT, NOT_FOUND }

enum DialogIs { done, error, ask, sending }

enum CustomerReviews { OK, NOTR, NOK }

enum PaycellDeviceStatusesEnum { FREE, BUSY, NOT_INSTALLED }

enum PrinterTypeEnum { LOCAL, NETWORK, USB, BLUETOOTH }

enum TipViewTypeEnum { INLINE, POPUP }

enum LogTypes {
  APP_TO_APP_TRIGGER_START,
  APP_TO_APP_TRIGGER_END,
  ON_DEVICE_BUSY,
  ON_MPOS_NOT_INSTALLED,
  ON_PAYMENT_SUCCESFULL,
  ON_PAYMENT_NOT_SUCCESSFUL,
  ERROR_IN_APP_AFTER_GETTING_BACK_FROM_PAYCELL,
  ON_RESPONSE_NULL,
  APP_EXCEPTION,
}

enum PaycellLogEnums {
  LOG,
  ERROR,
  RESPONSE,
  REQUEST,
  THROWN_WHEN,
}

enum PaycellPaymentStatus { SUCCESS, ERROR }

enum CancelPosPaymentTypeEnum {
  CANCEL('İptal'),
  REBATE('İade');

  final String title;

  const CancelPosPaymentTypeEnum(this.title);
}

enum WorkingModeEnum { pos, admin }

enum PrinterPaperType { mm58(), mm80() }
