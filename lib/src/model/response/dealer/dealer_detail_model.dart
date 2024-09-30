import '../other/food_category_model.dart';
import '../other/images_model.dart';

/// QR Kod okutulduğu zaman Api den dönen response
class DealerDetailModel {
  DealerDetailModel({
    required this.qr,
    this.dealerId,
    this.mainBrandId,
    this.dealerName,
    this.table,
    this.workingHours,
    this.logoImage,
    this.menus,
    this.categories,
    this.listImage,
    this.mobileCoverImage,
    this.isTipsActive,
    this.dealerTipShowTypeId,
    this.minTipPercent,
    this.tipsTable,
    this.restaurantInWorkingHours,
    this.valeIsActive,
    this.reservationIsActive,
    this.tableIsActive,
    this.selfServiceIsActive,
    this.bundleid,
    this.associatedDomain,
    this.deeplinkDomain,
    this.isStickyQR,
    this.isChangeableDeliveryType,
    this.tableServiceAmount,
    this.tableServiceExplainHeaderText,
    this.tableServiceExplainText,
    this.isAppActive,
  });

  String qr;
  int? dealerId;
  int? mainBrandId;
  String? dealerName;
  TableModel? table;
  WorkingHourModel? workingHours;
  List<MenuModel>? menus;
  List<FoodCategoryModel>? categories;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  bool? isTipsActive;
  String? dealerTipShowTypeId;
  int? minTipPercent;
  List<TipsTableModel>? tipsTable;
  bool? restaurantInWorkingHours;
  bool? reservationIsActive; // rezervasyon açık kapalı
  bool? tableIsActive; // masa modülü açık kapalı
  bool? valeIsActive; // Vale modülü açık kapalı. (Kapalı ise vale butonu menüde görünmesin)
  bool? selfServiceIsActive; // Self service aktif pasif
  String? bundleid;
  String? associatedDomain;
  String? deeplinkDomain;
  bool? isStickyQR; // Self service active siparişler de QR gözüksün mü
  bool? isChangeableDeliveryType; // Masaya service var mı
  double? tableServiceAmount; // MAsa service ücreti
  String? tableServiceExplainHeaderText; // Sepette olan masaya service seçme kart ının başlığı
  String? tableServiceExplainText; // Sepette olan masaya service seçme kart ının alt başlığı
  bool? isAppActive; // dijital menu uygulamasında uygulamada aç buttonu active değil mi

  factory DealerDetailModel.fromJson(Map<String, dynamic> json, {required String qr}) => DealerDetailModel(
        qr: qr,
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        dealerName: json["dealer_name"],
        table: TableModel.fromJson(json["tables"]),
        workingHours: WorkingHourModel.fromJson(json["working_hours"]),
        logoImage: json["logo_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["logo_image"]),
        listImage: json["list_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage:
            json["mobile_cover_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["mobile_cover_image"]),
        menus: json["menus"] == null ? [] : List<MenuModel>.from(json["menus"].map((x) => MenuModel.fromJson(x))),
        categories: json["categories"] == null
            ? []
            : List<FoodCategoryModel>.from(json["categories"].map((x) => FoodCategoryModel().fromJson(x))),
        isTipsActive: json["is_tips_active"],
        dealerTipShowTypeId: json["dealer_tip_show_type_id"],
        minTipPercent: json["min_tip_percent"],
        restaurantInWorkingHours: json["restaurant_in_working_hours"],
        tipsTable: json["tips_table"] == null
            ? []
            : List<TipsTableModel>.from(json["tips_table"].map((x) => TipsTableModel.fromJson(x))),
        valeIsActive: json["vale_is_active"],
        reservationIsActive: json["reservation_is_active"],
        tableIsActive: json["table_is_active"],
        selfServiceIsActive: json["self_service_is_active"],
        bundleid: json["bundleid"],
        associatedDomain: json["associated_domain"],
        deeplinkDomain: json["deeplink_domain"],
        isStickyQR: json["is_sticky_qr"],
        isChangeableDeliveryType: json["is_changeable_delivery_type"],
        tableServiceAmount: json["table_service_amount"]?.toDouble() ?? 0.0,
        tableServiceExplainHeaderText: json["table_service_explain_header_text"],
        tableServiceExplainText: json["table_service_explain_text"],
        isAppActive: json["is_app_active"],
      );
}

/// Okutulan masa bilgileri
class TableModel {
  TableModel({
    this.tableCode,
    this.tableName,
    this.stationCode,
    this.stationName,
    this.paymentModelId,
  });

  String? tableCode;
  String? tableName;
  String? stationCode;
  String? stationName;
  String? paymentModelId;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        tableCode: json["table_code"],
        tableName: json["table_name"],
        stationCode: json["station_code"],
        stationName: json["station_name"],
        paymentModelId: json["payment_model_id"],
      );
}

class MenuModel {
  MenuModel({
    this.id,
    this.menuName,
    this.menuImage,
    this.menuOrder,
  });

  int? id;
  String? menuName;
  String? menuImage;
  int? menuOrder;

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json["id"],
        menuName: json["menu_name"],
        menuImage: json["menu_image"],
        menuOrder: json["menu_order"],
      );
}

/// İşleteme çalışma saatleri
class WorkingHourModel {
  WorkingHourModel({
    this.end,
    this.start,
    this.title,
    this.status,
    this.courier,
    this.dayOfWeek,
    this.courierEnd,
    this.courierStart,
  });

  String? end;
  String? start;
  String? title;
  bool? status;
  bool? courier;
  String? dayOfWeek;
  String? courierEnd;
  String? courierStart;

  factory WorkingHourModel.fromJson(Map<String, dynamic> json) => WorkingHourModel(
        end: json["end"],
        start: json["start"],
        title: json["title"],
        status: json["status"],
        courier: json["courier"],
        dayOfWeek: json["dayofweek"],
        courierEnd: json["courier_end"],
        courierStart: json["courier_start"],
      );

  Map<String, dynamic> toJson() {
    return {
      "end": end,
      "start": start,
      "title": title,
      "status": status,
      "courier": courier,
      "dayofweek": dayOfWeek,
      "courier_end": courierEnd,
      "courier_start": courierStart,
    };
  }
}

class TipsTableModel {
  TipsTableModel({
    this.id,
    this.amount,
    this.listOrder,
  });

  int? id;
  double? amount;
  int? listOrder;

  factory TipsTableModel.fromJson(Map<String, dynamic> json) => TipsTableModel(
        id: json["id"],
        amount: json["amount"].toDouble(),
        listOrder: json["list_order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "amount": amount,
        "list_order": listOrder,
      };
}
