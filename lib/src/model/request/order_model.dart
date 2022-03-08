import '../response/abstract_base_model.dart';
import '../response/address/customer_address.dart';
import '../response/images_model.dart';
import '../response/menu_detail_model.dart';
import '../response/price_model.dart';
import '../response/order/product_cart_model.dart';
import '../response/product/product_detail_model.dart';
import '../response/product/promotion_menu_model.dart';
import '../../enum/id_enum.dart';
import '../../enum/type_enum.dart';

/// Sepette ürün ekleme request inde kullanılan order model
/// Order Masteri temsil etmekte
class OrderModel extends IBaseModel<OrderModel>{
  OrderModel({
    this.id,
    this.items,
    this.ssoId,
    this.dealerId,
    this.nickName,
    this.sessionId,
    this.orderNote,
    this.tipAmount,
    this.customerId,
    this.orderNumber,
    this.orderStatus,
    this.totalAmount,
    this.deliveryDate,
    this.orderPointId,
    this.clientPointId,
    this.deliveryTypeId,
    this.sessionPointId,
    this.tipAmountWithoutKdv,
    this.totalAmountWithoutKdv,
    this.customer,
    this.recordDate,
    this.orderOptions,
    this.customerAddress,
    this.tableServiceId,
    this.paymentInfo,
    this.isUseCampaign,
    this.beforeCampaignTotal,
    this.totalCampaignDiscount,
    this.totalUsedCampaignBudget,
  });



  int? id;
  List<OrderItem>? items;
  String? ssoId;
  int? dealerId;
  String? nickName;
  String? sessionId;
  String? orderNote;
  double? tipAmount;
  int? customerId;
  String? orderNumber;
  OrderStatus? orderStatus;
  double? totalAmount;
  String? deliveryDate;
  String? orderPointId;
  String? clientPointId;
  String? deliveryTypeId;
  String? sessionPointId;
  double? tipAmountWithoutKdv;
  double? totalAmountWithoutKdv;
  OrderCustomerModel? customer;
  DateTime? recordDate;
  String? orderOptions;
  CustomerAddress? customerAddress;
  int? tableServiceId;
  PaymentInfo? paymentInfo;
  bool? isUseCampaign;
  double? beforeCampaignTotal;
  double? totalCampaignDiscount;
  double? totalUsedCampaignBudget;

  @override
    OrderModel fromJson(Map<dynamic, dynamic> json) => OrderModel(
    id: json["id"],
    items: json["items"] == null ? [] : List<OrderItem>.from(json["items"].map((x) => OrderItem.fromJson(x))),
    ssoId: json["sso_id"],
    dealerId: json["dealer_id"],
    nickName: json["nick_name"],
    sessionId: json["sessionId"],
    orderNote: json["order_note"],
    tipAmount: json["tip_amount"] == null ? 0.0 : json["tip_amount"].toDouble(),
    customerId: json["customer_id"],
    orderNumber: json["order_number"],
    orderStatus: OrderStatus.fromJson(json["order_status"]),
    totalAmount: json["total_amount"]  == null ? 0.0 : json["total_amount"].toDouble(),
    deliveryDate: json["delivery_date"],
    orderPointId: json["order_point_id"],
    clientPointId: json["client_point_id"],
    deliveryTypeId: json["delivery_type_id"],
    sessionPointId: json["session_point_id"],
    tipAmountWithoutKdv: json["tip_amount_without_kdv"]  == null ? 0 : json["tip_amount_without_kdv"].toDouble(),
    totalAmountWithoutKdv: json["total_amount_without_kdv"] == null ? 0 : json["total_amount_without_kdv"].toDouble(),
    customer:json["customer"] == null ? null :OrderCustomerModel.fromJson(json["customer"]),
    recordDate: DateTime.parse(json["record_date"]),
    orderOptions: json["order_options"] ?? '',
    customerAddress: json["customer_address"] == null ? null : CustomerAddress.fromJson(json["customer_address"]),
    paymentInfo: json["payment_info"] == null ? null : PaymentInfo.fromJson(json["payment_info"]),
    tableServiceId: json["table_service_id"],
    isUseCampaign: json["is_use_campaign"],
    beforeCampaignTotal: json["before_campaign_total"],
    totalCampaignDiscount: json["total_campaign_discount"],
    totalUsedCampaignBudget: json["total_used_campaign_budget"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
    "sso_id": ssoId,
    "dealer_id": dealerId,
    "nick_name": nickName,
    "sessionId": sessionId,
    "order_note": orderNote,
    "tip_amount": tipAmount,
    "customer_id": customerId,
    "order_number": orderNumber,
    "order_status": orderStatus!.toJson(),
    "total_amount": totalAmount,
    "delivery_date": deliveryDate,
    "order_point_id": orderPointId,
    "client_point_id": clientPointId,
    "delivery_type_id": deliveryTypeId,
    "session_point_id": sessionPointId,
    "tip_amount_without_kdv": tipAmountWithoutKdv,
    "total_amount_without_kdv": totalAmountWithoutKdv,
    "customer": customer == null ? null :customer!.toJson(),
    "record_date": recordDate == null ? null :recordDate!.toIso8601String(),
    "order_options": orderOptions,
    "customer_address": customerAddress!.toJson(),
    "payment_info": paymentInfo!.toJson(),
    "table_service_id": tableServiceId,
    "is_use_campaign": isUseCampaign,
    "before_campaign_total": beforeCampaignTotal,
    "total_campaign_discount": totalCampaignDiscount,
    "total_used_campaign_budget": totalUsedCampaignBudget,
  };
}

class OrderStatus {
  OrderStatus({
    this.orderStatusCode,
    this.orderStatusName,
  });

  String? orderStatusCode;
  String? orderStatusName;

  factory OrderStatus.fromJson(Map<dynamic, dynamic> json) => OrderStatus(
    orderStatusCode: json["order_status_code"],
    orderStatusName: json["order_status_name"],
  );

  Map<String, dynamic> toJson() => {
    "order_status_code": orderStatusCode,
    "order_status_name": orderStatusName,
  };
}

class PaymentInfo {
  PaymentInfo({
    this.type,
    this.name,
  });

  String? type;
  String? name;

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => PaymentInfo(
    type: json["type"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
  };
}


/// [OrderModel] Order masterin Detayını temsil etmekte
/// Mater için list halinde olup her biri bi ürünü temsil etmekte
class OrderItem {
  OrderItem({
    this.id,
    this.count,
    this.options,
    this.itemCode,
    this.itemNote,
    this.statusId,
    this.itemPrice,
    this.itemTitle,
    this.productId,
    this.taxPercent,
    this.totalPrice,
    this.itemTypeId,
    this.orderMainId,
    this.promotionMenuId,
    this.itemPriceWithoutKdv,
    this.totalPriceWithoutKdv,
    this.itemObject,
    this.status,
    this.beforeCampaignTotal,
    this.beforeCampaignItemPrice,
    this.campaignId,
    this.isGift,
    this.isUseCampaign,
  });

  int? id;
  int? count;
  List<OrderOption>? options;
  String? itemCode;
  String? itemNote;
  String? statusId;
  double? itemPrice;
  String? itemTitle;
  int? productId;
  int? taxPercent;
  double? totalPrice;
  String? itemTypeId;
  int? orderMainId;
  int? promotionMenuId;
  double? itemPriceWithoutKdv;
  double? totalPriceWithoutKdv;
  ProductModel? itemObject;
  ItemStatus? status;
  double? beforeCampaignItemPrice;
  double? beforeCampaignTotal;
  int? campaignId;
  bool? isGift;
  bool? isUseCampaign;

  /// Order modelde olan ürünü ProductPrfile ekranında kullanılan modele çevirmekte
  /// [OrderItem] ---> [ProductDetailModel]
  /// Normak ürün için.
  ProductDetailModel toProductDetailModel(){
    var map = _getOptionAndFeature(this);
    return ProductDetailModel()
      ..id = itemTypeId == ItemType.PRODUCT.name
          ? productId
          : promotionMenuId
      ..price = [
        PriceModel(
          id: 0,
          price: itemPrice,
          orderDeliveryTypeId: PriceType.TABLE.name,
        )
      ]
      ..images = [
        ImagesModel(
          id: 0,
          imageUrl: '',
          listOrder: 0,
          imageSizeId: ImageSizeId.mobile_detail.name,
        )
      ]
      ..calorie = null
      ..itemType = itemTypeId
      ..makeTime = null
      ..productName = itemTitle
      ..shortDescription = ''
      ..optionGroups = map[OptionType.OPTION] ?? []
      ..features = map[OptionType.FEATURE] ?? [];
  }

  Map<OptionType, dynamic> _getOptionAndFeature(OrderItem item) {
    List<OptionGroupModel>? optionGroups = [];
    List<FeatureModel>? features = [];

    /// Optionleri ayarlıyoruz
    for (int i = 0; i < item.options!.length; i++) {
      if (item.options![i].optionType == OptionType.OPTION.name) {
        var optionGroupItem = OptionGroupModel()
          ..id = item.options![i].id
          ..options = List.generate(item.options![i].items!.length, (index) => OptionModel(id: item.options![i].items![index].id));
        optionGroups.add(optionGroupItem);
      } else {
        var featuresItem = FeatureModel(
          id: item.options![i].id,
          items: List.generate(
            item.options![i].items!.length,
                (index) => ItemModel(),
          ),
        );
        features.add(featuresItem);
      }
    }

    return {OptionType.OPTION: optionGroups, OptionType.FEATURE: features};
  }


  /// Order modelde olan ürünü ProductPrfile ekranında kullanılan modele çevirmekte
  /// [OrderItem] ---> [PromotionMenuDetailModel]
  /// Promosyonlu ürünler için.
  PromotionMenuDetailModel toPromotionModel() => PromotionMenuDetailModel()
    ..id = itemTypeId == ItemType.PRODUCT.name
        ? productId
        : promotionMenuId
    ..price = [
      PriceModel(
        id: 0,
        price: itemPrice,
        orderDeliveryTypeId: PriceType.TABLE.name,
      )
    ]
    ..images = [
      ImagesModel(
        id: 0,
        imageUrl: '',
        listOrder: 0,
        imageSizeId: ImageSizeId.mobile_detail.name,
      )
    ]
    ..totalCalorie = null
    ..totalTime = null
    ..promotionMenuName = itemTitle
    ..shortDescription = ''
    ..sections = List.generate(
      options!.length,
          (index) => SectionModel(
        id: options![index].sectionId,
        products: [
          ProductDetailModel(
            id: options![index].sectionItem!.itemId,
            features: List.of(_getFeatureFromOrder(options![index].sectionItem!.options!)),
            optionGroups: List.of(_getOptionFromOrder(options![index].sectionItem!.options!)),
          )
        ],
      ),
    );

  List<FeatureModel> _getFeatureFromOrder(List<OrderSectionItemOption> orderOption){
    List<FeatureModel> feature = [];
    for(int featureIndex = 0; featureIndex< orderOption.length;featureIndex++){
      if(orderOption[featureIndex].optionType == OptionType.FEATURE.name) {
        feature.add(FeatureModel(
            id: orderOption[featureIndex].id,
            items: List.generate(orderOption[featureIndex].items!.length, (index) => ItemModel(id: orderOption[featureIndex].items![index].id))));
      }
    }
    return feature;
  }

  List<OptionGroupModel> _getOptionFromOrder(List<OrderSectionItemOption> orderOption){
    List<OptionGroupModel> option = [];
    for(int optionIndex = 0; optionIndex< orderOption.length;optionIndex++){
      if(orderOption[optionIndex].optionType == OptionType.OPTION.name) {
        option.add(OptionGroupModel(
            id: orderOption[optionIndex].id,
            options: List.generate(orderOption[optionIndex].items!.length, (index) => OptionModel(id: orderOption[optionIndex].items![index].id))));
      }
    }
    return option;
  }

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
    id: json["id"],
    count: json["count"],
    options: json["options"] == null ? [] : List<OrderOption>.from(json["options"].map((x) => OrderOption.fromJson(x))),
    itemCode: json["item_code"],
    itemNote: json["item_note"] ?? '',
    statusId: json["status_id"],
    itemPrice: json["item_price"].toDouble(),
    itemTitle: json["item_title"],
    productId: json["product_id"],
    itemObject: ProductModel().fromJson(json["item_object"]),
    taxPercent: json["tax_percent"],
    totalPrice: json["total_price"].toDouble(),
    itemTypeId: json["item_type_id"],
    orderMainId: json["order_main_id"],
    promotionMenuId: json["promotion_menu_id"],
    itemPriceWithoutKdv: json["item_price_without_kdv"].toDouble(),
    totalPriceWithoutKdv: json["total_price_without_kdv"].toDouble(),
    status: ItemStatus.fromJson(json["status"]),
    beforeCampaignItemPrice: json["before_campaign_item_price"],
    beforeCampaignTotal: json["before_campaign_total"],
    campaignId: json["campaign_id"],
    isGift: json["is_gift"],
    isUseCampaign: json["is_use_campaign"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "count": count,
    "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
    "item_code": itemCode,
    "item_note": itemNote,
    "status_id": statusId,
    "item_price": itemPrice,
    "item_title": itemTitle,
    "product_id": productId,
    "tax_percent": taxPercent,
    "total_price": totalPrice,
    "item_type_id": itemTypeId,
    "order_main_id": orderMainId,
    "promotion_menu_id": promotionMenuId,
    "item_object": itemObject == null ? null : itemObject!.toJson(),
    "item_price_without_kdv": itemPriceWithoutKdv,
    "total_price_without_kdv": totalPriceWithoutKdv,
    "status": status == null ? null :  status!.toJson(),
    "before_campaign_item_price": beforeCampaignItemPrice,
    "before_campaign_total": beforeCampaignTotal,
    "campaign_id": campaignId,
    "is_gift": isGift,
    "is_use_campaign": isUseCampaign,
  };
}

/// Ürün opsyonlarını temsil etmekte
class OrderOption {
  OrderOption({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
    this.sectionId,
    this.sectionItem,
    this.sectionTitle,
  });

  int? id;
  List<OrderOptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  int? totalPrice;
  int? sectionId;
  OrderSectionItem? sectionItem;
  String? sectionTitle;

  factory OrderOption.fromJson(Map<String, dynamic> json) => OrderOption(
    id: json["id"],
    items: json["items"] == null ? [] : List<OrderOptionItem>.from(json["items"].map((x) => OrderOptionItem.fromJson(x))),
    title: json["title"],
    addingType: json["adding_type"],
    optionType: json["option_type"],
    totalPrice: json["total_price"],
    sectionId: json["section_id"],
    sectionItem: json["section_item"] == null ? null :OrderSectionItem.fromJson(json["section_item"]),
    sectionTitle: json["section_title"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "items": items == null
        ? null
        : List<dynamic>.from(items!.map((x) => x.toJson())),
    "title": title,
    "adding_type": addingType,
    "option_type": optionType,
    "total_price": totalPrice,
    "section_id": sectionId,
    "section_item": sectionItem == null ? null : sectionItem!.toJson(),
    "section_title": sectionTitle,
  };
}

class OrderCustomerModel {
  OrderCustomerModel({
    this.id,
    this.sessionId,
    this.nameSurname,
  });

  int? id;
  String? sessionId;
  String? nameSurname;

  factory OrderCustomerModel.fromJson(Map<String, dynamic> json) => OrderCustomerModel(
    id: json["id"],
    sessionId: json["sessionId"],
    nameSurname: json["name_surname"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sessionId": sessionId,
    "name_surname": nameSurname,
  };
}

/// Product ___________________________________
class OrderOptionItem {
  OrderOptionItem({
    this.id,
    this.price,
    this.title,
    this.productId,
  });

  int? id;
  double? price;
  String? title;
  int? productId;

  factory OrderOptionItem.fromJson(Map<String, dynamic> json) => OrderOptionItem(
    id: json["id"],
    price: json["price"].toDouble(),
    title: json["title"],
    productId: json["product_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "title": title,
    "product_id": productId,
  };
}
/// ___________________________________________

/// Promotion Menu ___________________________________
/// Promosyon secitonlarını temsil etmekte
class OrderSectionItem {
  OrderSectionItem({
    this.itemId,
    this.options,
    this.productName,
  });

  int? itemId;
  List<OrderSectionItemOption>? options;
  String? productName;

  factory OrderSectionItem.fromJson(Map<String, dynamic> json) => OrderSectionItem(
    itemId: json["item_id"],
    options: json["options"] == null ? [] : List<OrderSectionItemOption>.from(json["options"].map((x) => OrderSectionItemOption.fromJson(x))),
    productName: json["product_name"],
  );

  Map<String, dynamic> toJson() => {
    "item_id": itemId,
    "options": options == null
        ? null
        : List<dynamic>.from(options!.map((x) => x.toJson())),
    "product_name": productName,
  };
}

class OrderSectionItemOption {
  OrderSectionItemOption({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
  });

  int? id;
  List<OrderOptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  int? totalPrice;

  factory OrderSectionItemOption.fromJson(Map<String, dynamic> json) =>
      OrderSectionItemOption(
        id: json["id"],
        items: json["items"] == null ? []: List<OrderOptionItem>.from(json["items"].map((x) => OrderOptionItem.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
    "title": title,
    "adding_type": addingType,
    "option_type": optionType,
    "total_price": totalPrice,
  };
}
/// __________________________________________________

class ItemStatus {
  ItemStatus({
    this.statusName,
    this.statusCode,
  });

  String? statusName;
  String? statusCode;

  factory ItemStatus.fromJson(Map<String, dynamic> json) => ItemStatus(
    statusName: json["status_name"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "status_name": statusName,
    "status_code": statusCode,
  };
}


