import 'dart:convert';

import '../../../../../request.dart';

class NextOrderStatusResponseModel {
  OrderModel? order;
  dynamic service;
  Map<String, dynamic>? marketplace;

  NextOrderStatusResponseModel({
    this.order,
    this.service,
    this.marketplace,
  });

  factory NextOrderStatusResponseModel.fromJson(Map<String, dynamic> map) => NextOrderStatusResponseModel(
        order: map["order"] == null ? null : OrderModel().jsonParser(map["order"]),
        service: map["service"],
        marketplace: map["marketplace"] == null ? null : json.decode(map["marketplace"]),
      );

  Map<String, dynamic> toJson() => {
        "order": order?.toJson(),
        "service": service,
        "marketplace": marketplace,
      };
}
