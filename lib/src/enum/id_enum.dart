import '../../enum.dart';

/// [DeliveryTimeId] Teslimat zamanı
/// [NOW] Şimdi
/// [LATER] Daha sonra
enum DeliveryTimeId { NOW, LATER }

/// [ChooseTypeId] Ürün detay da ürün özelliklerin seçme türüdür
/// [SINGLE] Tekli seçme
/// [MULTIPLE] Çoklu seçme
enum ChooseTypeId { SINGLE, MULTIPLE }

/// [AddingTypeId] Ürün detay da ürün özelliklerin ekleme türüdür
/// [ADD] Ekleme
/// [DECREASE] çıkarma
/// [SELECT] Seçme
enum AddingTypeId { ADD, DECREASE, SELECT }

/// [PayTypeId] Siparis ödeme türü
/// [TOTAL] Bir kişi yaptı
/// [IND] Bireysel herkes kendisi yaptı
enum PayTypeId { TOTAL, IND }

/// [OrderPoint] Sipariş noktsı
/// [TAKEOUT] Adrese teslim
/// [GETIN] Gel al servis
/// [TABLE] Masaya
enum OrderPoint {
  TAKEOUT(PriceType.TAKEOUT, 'Adrese Teslim'),
  GETIN(PriceType.GETIN, 'Gel Al'),
  TABLE(PriceType.TABLE, 'Restorant İçi');

  final PriceType priceType;
  final String title;

  const OrderPoint(this.priceType, this.title);
}

/// [SessionPoint] Oturum yeri
/// [RESTIN] Restoran içi
/// [MARKETPLACE] Marketplace
/// [LINK] Restoran sayfası
/// [RESTOP] İşletme tarafında garson tarafından kullanılıyor.
enum SessionPoint { RESTIN, RESTOP, MARKETPLACE, LINK }

/// [AppModuleId] OUygulama modulleri
/// [Dealer] Restoran içi
/// [MarketPlace] Marketplace
enum AppModuleId { Dealer, MarketPlace, DigitalEnergy, Hotel, Trip, Market }

/// [DealerBottomButtonId] İşletme modüllün alt buttonların Id si
/// [Main] Ana ekran
/// [Order] Sipariş ekranı
/// [Waiter] Garson ekranı
/// [Valet] Vale ekranı
enum DealerBottomButtonId { Main, Order, Waiter, Valet }

/// [MarketPlaceBottomButtonId] İşletme modüllün alt buttonların Id si
/// [Home] Ana ekran
/// [Campaign] Kampanya ekranı
/// [Search] Arama ekranı
/// [Basket] Sipariş ekranı
enum MarketPlaceBottomButtonId { Home, Search, Campaign, Basket }

enum EnergyBottomButtonId { Home, Planing, Map, History }

/// [ImageSizeId] Resimin hangi Liste türünde [ListMode] gözükeceğini belirten id
/// [mobile_list] bu resim türü [ListMode.line] inde kulanılmakta
/// [mobile_list_col] bu resim türü [ListMode.grid] inde kulanılmakta
/// [mobile_detail] Ürün Detay ekranında kullanılmakta
/// [campaign_app_image] Kampanya resimleri
enum ImageSizeId { mobile_list, mobile_list_col, mobile_detail, mobile_daily_menu, campaign_app_image }

/// GetX için yazıldı
/// Her bit item Getx Id sidir
/// [onChangeServiceModel] dealer service model için yazıldı
enum GetBuilderId { onChangeServiceModel }

/// Order Item durumu
/// [WAIT] Bekliyor
/// [COMPLETE] Tamamlandı
/// [INKITCHEN] Mutfakta
/// [CANCEL] Ödeme yapılmadan önce iptal edilen ürünler
/// [CANCEL2] Ödeme yapıldıktan sonra iptal edilen ürünler
enum OrderItemStatusId { WAIT, COMPLETE, INKITCHEN, CANCEL, CANCEL2, REVISION }

/// [ClientPointId] Platform
/// [MOBILE_APP] Mobil
/// [KIOSK] Siparişim işletme tarafında kullanılan kiosk modu
enum ClientPointId {
  MOBILE_APP('Mobil Uygulama'),
  KIOSK('KIOSK');

  final String title;

  const ClientPointId(this.title);
}

/// [ThirdPartClientPointId] 3 part siparişler
enum ThirdPartClientPointId {
  GETIR('Getir'),
  TRENDYOL('Trendyol Yemek'),
  YEMEKSEPETI('YemekSepeti'),
  MIGROSYEMEK('Migros Yemek');

  final String title;

  const ThirdPartClientPointId(this.title);
}

/// [ClientType] Platform
/// [APP] Mobil
/// [KIOSK] Siparişim işletme tarafında kullanılan kiosk modu
enum ClientType { APP, KIOSK }

/// [AppTypeForAvailabilitySocket] Cihazların acık durumunu alırken tipini belirlemek için kullanılmakta
/// socket ve token alırken kullanılmakta
/// [KIOSK] kiosk
/// [POS] pos
/// [APP] Kiosk ve pos olmayan cihazlar
enum AppTypeForAvailabilitySocket { KIOSK, POS, APP }

/// [CampaignTypeId] indirim türleri
/// [PERCENT] % indirim-PERCENT
/// [DISCOUNT] Sabit Oran İndirimi-DISCOUNT
/// [GIFTPRODUCT] Hediye Ürün-GIFTPRODUCT
/// [PRICECHANGE] Ürün Fiyatı Değiştirme-PRICECHANGE
/// [COUPON] 3.Party Kupon Kampanyası-COUPON
enum CampaignTypeId { PERCENT, DISCOUNT, GIFTPRODUCT, PRICECHANGE, COUPON }

/// [BannerTargetId] Banner Event Id leri
/// [dealer] İşletmeye gider
/// [product] Ürüne gider
/// [link] Link e gider
/// [campaign] campaign e gider
enum BannerTargetId { dealer, product, link, campaign }

/// [LimitNumberOfOrderTypeId] Banner Event Id leri
/// [JUST] Sadece
/// [EVERYC] Müşterinin Her
/// [EVERYCD] Müşterinin aynı işletmede her
/// [ALL] Her siparişte
enum LimitNumberOfOrderTypeId { JUST, EVERYC, EVERYCD, ALL }

/// [LimitNumberOfOrderTypeId] Banner Event Id leri
/// [IN_VALET] Valede
/// [WAITING_FOR_GET] Bekleniyor
/// [DONE] Teslim Edildi
enum VehicleStatusId { IN_VALET, WAITING_FOR_GET, DONE }

/// [AdviceStatusId] QR web te kullanılmakta 'Uygulamayı tavsiye edermisiniz'
/// [OK] Tavsiye ederim
/// [NOTR] nötr
/// [NOK] Tavisye etmem
enum AdviceStatusId { OK, NOTR, NOK }

/// [AppId] Uygulamaların id'si
/// [SIP] Siparişim uygulaması
/// [RI] Restorant işim uygulaması
enum AppId { SIP, RI }

/// [TableOrderType] Masa modulunde sipariş verme türü
/// [POST] Normal sipariş verme
/// [PRE] Self Service
/// [HYBRID] İlk Önce ödeme alan restoranlar
enum PaymentModelID {
  POST('Masa'),
  PRE('Self Servis');

  final String title;

  const PaymentModelID(this.title);
}
