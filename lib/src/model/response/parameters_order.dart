import 'dart:convert';

import 'package:sip_models/src/model/response/payment/payment_types.dart';

ParametersOrder parametersOrderFromJson(String str) =>
    ParametersOrder.fromJson(json.decode(str));

String parametersOrderToJson(ParametersOrder data) =>
    json.encode(data.toJson());

class ParametersOrder {
  ParametersOrder({
    this.units,
    this.currencies,
    this.addressTypes,
    this.languages,
    this.paymentTypes,
    this.orderDeliveryTypes,
    this.orderStatus,
    this.orderCancelReason,
    this.orderItemStatus,
    this.servicePaymentTypes,
    this.chooseTypes,
    this.orderOptions,
    this.orderStatusGroup,
    this.reservationStatus,
    this.sessionStartPoint,
    this.foodCategories,
    this.orderBy,
  });

  ParametersOrder.fromJson(dynamic json) {
    if (json['units'] != null) {
      units = [];
      json['units'].forEach((v) {
        units?.add(Units.fromJson(v));
      });
    }
    if (json['currencies'] != null) {
      currencies = [];
      json['currencies'].forEach((v) {
        currencies?.add(Currencies.fromJson(v));
      });
    }
    if (json['address_types'] != null) {
      addressTypes = [];
      json['address_types'].forEach((v) {
        addressTypes?.add(Address_types.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      languages = [];
      json['languages'].forEach((v) {
        languages?.add(Languages.fromJson(v));
      });
    }
    if (json['payment_types'] != null) {
      paymentTypes = [];
      json['payment_types'].forEach((v) {
        paymentTypes?.add(PaymentTypes.fromJson(v));
      });
    }
    if (json['order_delivery_types'] != null) {
      orderDeliveryTypes = [];
      json['order_delivery_types'].forEach((v) {
        orderDeliveryTypes?.add(Order_delivery_types.fromJson(v));
      });
    }
    if (json['order_status'] != null) {
      orderStatus = [];
      json['order_status'].forEach((v) {
        orderStatus?.add(Order_status.fromJson(v));
      });
    }
    if (json['order_cancel_reason'] != null) {
      orderCancelReason = [];
      json['order_cancel_reason'].forEach((v) {
        orderCancelReason?.add(Order_cancel_reason.fromJson(v));
      });
    }
    if (json['order_item_status'] != null) {
      orderItemStatus = [];
      json['order_item_status'].forEach((v) {
        orderItemStatus?.add(Order_item_status.fromJson(v));
      });
    }
    if (json['service_payment_types'] != null) {
      servicePaymentTypes = [];
      json['service_payment_types'].forEach((v) {
        servicePaymentTypes?.add(Service_payment_types.fromJson(v));
      });
    }
    if (json['choose_types'] != null) {
      chooseTypes = [];
      json['choose_types'].forEach((v) {
        chooseTypes?.add(Choose_types.fromJson(v));
      });
    }
    if (json['order_options'] != null) {
      orderOptions = [];
      json['order_options'].forEach((v) {
        orderOptions?.add(Order_options.fromJson(v));
      });
    }
    if (json['order_status_group'] != null) {
      orderStatusGroup = [];
      json['order_status_group'].forEach((v) {
        orderStatusGroup?.add(Order_status_group.fromJson(v));
      });
    }
    if (json['reservation_status'] != null) {
      reservationStatus = [];
      json['reservation_status'].forEach((v) {
        reservationStatus?.add(Reservation_status.fromJson(v));
      });
    }
    if (json['session_start_point'] != null) {
      sessionStartPoint = [];
      json['session_start_point'].forEach((v) {
        sessionStartPoint?.add(Session_start_point.fromJson(v));
      });
    }
    if (json['food_categories'] != null) {
      foodCategories = [];
      json['food_categories'].forEach((v) {
        foodCategories?.add(ParametersFoodCategories.fromJson(v));
      });
    }
    if (json['orderBy'] != null) {
      orderBy = [];
      json['orderBy'].forEach((v) {
        orderBy?.add(OrderBy.fromJson(v));
      });
    }
  }
  List<Units>? units;
  List<Currencies>? currencies;
  List<Address_types>? addressTypes;
  List<Languages>? languages;
  List<PaymentTypes>? paymentTypes;
  List<Order_delivery_types>? orderDeliveryTypes;
  List<Order_status>? orderStatus;
  List<Order_cancel_reason>? orderCancelReason;
  List<Order_item_status>? orderItemStatus;
  List<Service_payment_types>? servicePaymentTypes;
  List<Choose_types>? chooseTypes;
  List<Order_options>? orderOptions;
  List<Order_status_group>? orderStatusGroup;
  List<Reservation_status>? reservationStatus;
  List<Session_start_point>? sessionStartPoint;
  List<ParametersFoodCategories>? foodCategories;
  List<OrderBy>? orderBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (units != null) {
      map['units'] = units?.map((v) => v.toJson()).toList();
    }
    if (currencies != null) {
      map['currencies'] = currencies?.map((v) => v.toJson()).toList();
    }
    if (addressTypes != null) {
      map['address_types'] = addressTypes?.map((v) => v.toJson()).toList();
    }
    if (languages != null) {
      map['languages'] = languages?.map((v) => v.toJson()).toList();
    }
    if (paymentTypes != null) {
      map['payment_types'] = paymentTypes?.map((v) => v.toJson()).toList();
    }
    if (orderDeliveryTypes != null) {
      map['order_delivery_types'] =
          orderDeliveryTypes?.map((v) => v.toJson()).toList();
    }
    if (orderStatus != null) {
      map['order_status'] = orderStatus?.map((v) => v.toJson()).toList();
    }
    if (orderCancelReason != null) {
      map['order_cancel_reason'] =
          orderCancelReason?.map((v) => v.toJson()).toList();
    }
    if (orderItemStatus != null) {
      map['order_item_status'] =
          orderItemStatus?.map((v) => v.toJson()).toList();
    }
    if (servicePaymentTypes != null) {
      map['service_payment_types'] =
          servicePaymentTypes?.map((v) => v.toJson()).toList();
    }
    if (chooseTypes != null) {
      map['choose_types'] = chooseTypes?.map((v) => v.toJson()).toList();
    }
    if (orderOptions != null) {
      map['order_options'] = orderOptions?.map((v) => v.toJson()).toList();
    }
    if (orderStatusGroup != null) {
      map['order_status_group'] =
          orderStatusGroup?.map((v) => v.toJson()).toList();
    }
    if (reservationStatus != null) {
      map['reservation_status'] =
          reservationStatus?.map((v) => v.toJson()).toList();
    }
    if (sessionStartPoint != null) {
      map['session_start_point'] =
          sessionStartPoint?.map((v) => v.toJson()).toList();
    }
    if (foodCategories != null) {
      map['food_categories'] = foodCategories?.map((v) => v.toJson()).toList();
    }
    if (orderBy != null) {
      map['orderBy'] = orderBy?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// title : "Popülerlik"
/// code : "POPULARITY"

class OrderBy {
  OrderBy({
    this.title,
    this.code,
  });

  OrderBy.fromJson(dynamic json) {
    title = json['title'];
    code = json['code'];
  }
  String? title;
  String? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['code'] = code;
    return map;
  }
}

/// category_code : "KAHVE-002"
/// category_name : "Test - Kahveler"
/// image : {"url":"https://turkcellsiparisim.s3.eu-central-1.amazonaws.com/icdn/mobile_kitchen_pilav-ustu-doner16425096845f7cba9d60108.jpeg","size_code":"mobile_kitchen"}
/// is_marketplace : true

class ParametersFoodCategories {
  ParametersFoodCategories({
    this.categoryCode,
    this.categoryName,
    this.image,
    this.isMarketplace,
  });

  ParametersFoodCategories.fromJson(dynamic json) {
    categoryCode = json['category_code'];
    categoryName = json['category_name'];
    image = json['image'] != null ? ParametersImage.fromJson(json['image']) : null;
    isMarketplace = json['is_marketplace'];
  }
  String? categoryCode;
  String? categoryName;
  ParametersImage? image;
  bool? isMarketplace = false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_code'] = categoryCode;
    map['category_name'] = categoryName;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    map['is_marketplace'] = isMarketplace;
    return map;
  }
}

/// url : "https://turkcellsiparisim.s3.eu-central-1.amazonaws.com/icdn/mobile_kitchen_pilav-ustu-doner16425096845f7cba9d60108.jpeg"
/// size_code : "mobile_kitchen"

class ParametersImage {
  ParametersImage({
    this.url,
    this.sizeCode,
  });

  ParametersImage.fromJson(dynamic json) {
    url = json['url'];
    sizeCode = json['size_code'];
  }
  String? url;
  String? sizeCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['size_code'] = sizeCode;
    return map;
  }
}

/// session_point_code : "LINK"
/// session_point_name : "Restoran Sayfası"

class Session_start_point {
  Session_start_point({
    this.sessionPointCode,
    this.sessionPointName,
  });

  Session_start_point.fromJson(dynamic json) {
    sessionPointCode = json['session_point_code'];
    sessionPointName = json['session_point_name'];
  }
  String? sessionPointCode;
  String? sessionPointName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['session_point_code'] = sessionPointCode;
    map['session_point_name'] = sessionPointName;
    return map;
  }
}

/// reservation_status_code : "ACCEPT"
/// reservation_status_name : "Onaylandı"
/// config : {"color":"indigo"}

class Reservation_status {
  Reservation_status({
    this.reservationStatusCode,
    this.reservationStatusName,
    this.config,
  });

  Reservation_status.fromJson(dynamic json) {
    reservationStatusCode = json['reservation_status_code'];
    reservationStatusName = json['reservation_status_name'];
    config = json['config'] != null ? Configs.fromJson(json['config']) : null;
  }
  String? reservationStatusCode;
  String? reservationStatusName;
  Configs? config;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reservation_status_code'] = reservationStatusCode;
    map['reservation_status_name'] = reservationStatusName;
    if (config != null) {
      map['config'] = config?.toJson();
    }
    return map;
  }
}

/// color : "indigo"

class Config {
  Config({
    this.color,
  });

  Config.fromJson(dynamic json) {
    color = json['color'];
  }
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = color;
    return map;
  }
}

/// group_code : "ACCEPT"
/// group_name : "Onaylandı"

class Order_status_group {
  Order_status_group({
    this.groupCode,
    this.groupName,
  });

  Order_status_group.fromJson(dynamic json) {
    groupCode = json['group_code'];
    groupName = json['group_name'];
  }
  String? groupCode;
  String? groupName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['group_code'] = groupCode;
    map['group_name'] = groupName;
    return map;
  }
}

/// option_code : "NORING"
/// option_name : "Zili Çalma"

class Order_options {
  Order_options({
    this.optionCode,
    this.optionName,
  });

  Order_options.fromJson(dynamic json) {
    optionCode = json['option_code'];
    optionName = json['option_name'];
  }
  String? optionCode;
  String? optionName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['option_code'] = optionCode;
    map['option_name'] = optionName;
    return map;
  }
}

/// choose_type_code : "MULTIPLE"
/// choose_type_name : "Çoklu seçim"

class Choose_types {
  Choose_types({
    this.chooseTypeCode,
    this.chooseTypeName,
  });

  Choose_types.fromJson(dynamic json) {
    chooseTypeCode = json['choose_type_code'];
    chooseTypeName = json['choose_type_name'];
  }
  String? chooseTypeCode;
  String? chooseTypeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['choose_type_code'] = chooseTypeCode;
    map['choose_type_name'] = chooseTypeName;
    return map;
  }
}

/// service_payment_type_code : "IND"
/// service_payment_type_name : "Herkes kendi hesabını ödedi"

class Service_payment_types {
  Service_payment_types({
    this.servicePaymentTypeCode,
    this.servicePaymentTypeName,
  });

  Service_payment_types.fromJson(dynamic json) {
    servicePaymentTypeCode = json['service_payment_type_code'];
    servicePaymentTypeName = json['service_payment_type_name'];
  }
  String? servicePaymentTypeCode;
  String? servicePaymentTypeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_payment_type_code'] = servicePaymentTypeCode;
    map['service_payment_type_name'] = servicePaymentTypeName;
    return map;
  }
}

/// status_code : "WAIT"
/// status_name : "Bekliyor"
/// list_order : 0
/// config : {"icon":"default.png","color":"primary"}

class Order_item_status {
  Order_item_status({
    this.statusCode,
    this.statusName,
    this.listOrder,
    this.config,
  });

  Order_item_status.fromJson(dynamic json) {
    statusCode = json['status_code'];
    statusName = json['status_name'];
    listOrder = json['list_order'];
    config = json['config'] != null ? Config.fromJson(json['config']) : null;
  }
  String? statusCode;
  String? statusName;
  int? listOrder;
  Config? config;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status_code'] = statusCode;
    map['status_name'] = statusName;
    map['list_order'] = listOrder;
    if (config != null) {
      map['config'] = config?.toJson();
    }
    return map;
  }
}

/// cancel_code : "ISLETME_IPTAL"
/// code_title : "Restoran yetkilisi siparişi butona basarak reddetti."

class Order_cancel_reason {
  Order_cancel_reason({
    this.cancelCode,
    this.codeTitle,
  });

  Order_cancel_reason.fromJson(dynamic json) {
    cancelCode = json['cancel_code'];
    codeTitle = json['code_title'];
  }
  String? cancelCode;
  String? codeTitle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cancel_code'] = cancelCode;
    map['code_title'] = codeTitle;
    return map;
  }
}

/// order_status_code : "OUT_TEMP"
/// order_status_name : "Cihazda"
/// is_start_level : false
/// is_payment_enable : true
/// is_complete_order : false
/// settings : {"type":"TEMP"}
/// order_point_id : "TAKEOUT"
/// list_order : 0
/// config : {"icon":"default.png","color":"purple"}
/// order_status_group_id : "TEMP"

class Order_status {
  Order_status({
    this.orderStatusCode,
    this.orderStatusName,
    this.isStartLevel,
    this.isPaymentEnable,
    this.isCompleteOrder,
    this.settings,
    this.orderPointId,
    this.listOrder,
    this.config,
    this.orderStatusGroupId,
  });

  Order_status.fromJson(dynamic json) {
    orderStatusCode = json['order_status_code'];
    orderStatusName = json['order_status_name'];
    isStartLevel = json['is_start_level'];
    isPaymentEnable = json['is_payment_enable'];
    isCompleteOrder = json['is_complete_order'];
    settings =
        json['settings'] != null ? Settings.fromJson(json['settings']) : null;
    orderPointId = json['order_point_id'];
    listOrder = json['list_order'];
    config = json['config'] != null ? Config.fromJson(json['config']) : null;
    orderStatusGroupId = json['order_status_group_id'];
  }
  String? orderStatusCode;
  String? orderStatusName;
  bool? isStartLevel;
  bool? isPaymentEnable;
  bool? isCompleteOrder;
  Settings? settings;
  String? orderPointId;
  int? listOrder;
  Config? config;
  String? orderStatusGroupId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['order_status_code'] = orderStatusCode;
    map['order_status_name'] = orderStatusName;
    map['is_start_level'] = isStartLevel;
    map['is_payment_enable'] = isPaymentEnable;
    map['is_complete_order'] = isCompleteOrder;
    if (settings != null) {
      map['settings'] = settings?.toJson();
    }
    map['order_point_id'] = orderPointId;
    map['list_order'] = listOrder;
    if (config != null) {
      map['config'] = config?.toJson();
    }
    map['order_status_group_id'] = orderStatusGroupId;
    return map;
  }
}

/// icon : "default.png"
/// color : "purple"

class Configs {
  Configs({
    this.icon,
    this.color,
  });

  Configs.fromJson(dynamic json) {
    icon = json['icon'];
    color = json['color'];
  }
  String? icon;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['icon'] = icon;
    map['color'] = color;
    return map;
  }
}

/// type : "TEMP"

class Settings {
  Settings({
    this.type,
  });

  Settings.fromJson(dynamic json) {
    type = json['type'];
  }
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }
}

/// delivery_code : "TAKEOUT"
/// delivery_name : "Adrese teslim"

class Order_delivery_types {
  Order_delivery_types({
    this.deliveryCode,
    this.deliveryName,
  });

  Order_delivery_types.fromJson(dynamic json) {
    deliveryCode = json['delivery_code'];
    deliveryName = json['delivery_name'];
  }
  String? deliveryCode;
  String? deliveryName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['delivery_code'] = deliveryCode;
    map['delivery_name'] = deliveryName;
    return map;
  }
}



/// language_code : "tr"
/// language_name : "Turkish"
/// is_default : true

class Languages {
  Languages({
    this.languageCode,
    this.languageName,
    this.isDefault,
  });

  Languages.fromJson(dynamic json) {
    languageCode = json['language_code'];
    languageName = json['language_name'];
    isDefault = json['is_default'];
  }
  String? languageCode;
  String? languageName;
  bool? isDefault;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['language_code'] = languageCode;
    map['language_name'] = languageName;
    map['is_default'] = isDefault;
    return map;
  }
}

/// address_type_code : "home"
/// address_type_name : "Ev"
/// icon : "-"

class Address_types {
  Address_types({
    this.addressTypeCode,
    this.addressTypeName,
    this.icon,
  });

  Address_types.fromJson(dynamic json) {
    addressTypeCode = json['address_type_code'];
    addressTypeName = json['address_type_name'];
    icon = json['icon'];
  }
  String? addressTypeCode;
  String? addressTypeName;
  String? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_type_code'] = addressTypeCode;
    map['address_type_name'] = addressTypeName;
    map['icon'] = icon;
    return map;
  }
}

/// code : "TL"
/// name : "TL"
/// iso_code : "TRY"

class Currencies {
  Currencies({
    this.code,
    this.name,
    this.isoCode,
  });

  Currencies.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
    isoCode = json['iso_code'];
  }
  String? code;
  String? name;
  String? isoCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    map['iso_code'] = isoCode;
    return map;
  }
}

/// code : "PIECE"
/// name : "Adet"

class Units {
  Units({
    this.code,
    this.name,
  });

  Units.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
  }
  String? code;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    return map;
  }
}
