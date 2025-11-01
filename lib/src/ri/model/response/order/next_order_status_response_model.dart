import 'dart:convert';

import 'package:background_json_parser/background_json_parser.dart';

import '../../../../../request.dart';

class NextOrderStatusResponseModel extends IBaseModel<NextOrderStatusResponseModel> {
  OrderModel? order;
  dynamic service;
  Map<String, dynamic>? marketplace;

  NextOrderStatusResponseModel({
    this.order,
    this.service,
    this.marketplace,
  });

  @override
  fromJson(Map<String, dynamic> map) => NextOrderStatusResponseModel(
        order: map["order"] == null ? null : OrderModel().jsonParser(map["order"]),
        service: map["service"],
        marketplace: map["marketplace"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "order": order?.toJson(),
        "service": service,
        "marketplace": marketplace,
      };
}
