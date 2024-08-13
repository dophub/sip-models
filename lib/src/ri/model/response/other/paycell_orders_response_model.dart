import 'package:background_json_parser/background_json_parser.dart';

class PaycellOrdersResponseModel extends IBaseModel<PaycellOrdersResponseModel> {
  PaycellOrdersResponseModel({
    this.serviceNumber,
    this.totalTipAmount,
    this.serviceTotalAmount,
    this.posPaymentType,
    this.updateDate,
    this.id,
    this.bankRefNo,
    this.isToday,
    this.tableName,
    this.provisionNo,
    this.posPaymentStatusCode,
    this.posPaymentStatusName,
    this.totalTipAmountWithoutKdv,
    this.serviceTotalAmountWithoutKdv,
    this.items,
    this.rrn,
  });

  String? serviceNumber;
  double? totalTipAmount;
  double? serviceTotalAmount;
  String? posPaymentType;
  DateTime? updateDate;
  int? id;
  String? bankRefNo;
  bool? isToday;
  double? totalTipAmountWithoutKdv;
  double? serviceTotalAmountWithoutKdv;
  String? tableName;
  String? rrn;
  String? provisionNo; // satışta olan transation id
  String? posPaymentStatusCode;
  String? posPaymentStatusName;
  List<PaycellOrdersResponseModelItem>? items;

  @override
  PaycellOrdersResponseModel fromJson(Map<String, dynamic> json) => PaycellOrdersResponseModel(
        serviceNumber: json["service_number"],
        totalTipAmount: json["total_tip_amount"]?.toDouble(),
        serviceTotalAmount: json["service_total_amount"]?.toDouble(),
        posPaymentType: json["pos_payment_type"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
        totalTipAmountWithoutKdv: json["total_tip_amount_without_kdv"]?.toDouble(),
        serviceTotalAmountWithoutKdv: json["service_total_amount_without_kdv"]?.toDouble(),
        id: json["id"],
        bankRefNo: json["bank_ref_no"],
        isToday: json["is_today"],
        tableName: json["table_name"],
        rrn: json["rrn"],
        provisionNo: json["provision_no"],
        posPaymentStatusCode: json["pos_payment_status_code"],
        posPaymentStatusName: json["pos_payment_status_name"],
        items: json["items"] == null ? [] : List<PaycellOrdersResponseModelItem>.from(json["items"]!.map((x) => PaycellOrdersResponseModelItem.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class PaycellOrdersResponseModelItem {
  PaycellOrdersResponseModelItem({
    this.count,
    this.productName,
    this.itemPrice,
    this.totalPrice,
    this.options,
  });

  int? count;
  String? productName;
  double? itemPrice;
  double? totalPrice;
  List<Option>? options;

  factory PaycellOrdersResponseModelItem.fromJson(Map<String, dynamic> json) => PaycellOrdersResponseModelItem(
        count: json["count"],
        productName: json["product_name"],
        itemPrice: json["item_price"]?.toDouble(),
        totalPrice: json["total_price"]?.toDouble(),
        options: json["options"] == null ? [] : List<Option>.from(json["options"]!.map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "product_name": productName,
        "item_price": itemPrice,
        "total_price": totalPrice,
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
      };
}

class Option {
  Option({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
  });

  int? id;
  List<OptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  double? totalPrice;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        items: json["items"] == null ? [] : List<OptionItem>.from(json["items"]!.map((x) => OptionItem.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
        totalPrice: json["total_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "adding_type": addingType,
        "option_type": optionType,
        "total_price": totalPrice,
      };
}

class OptionItem {
  OptionItem({
    this.id,
    this.price,
    this.title,
    this.productId,
  });

  int? id;
  double? price;
  String? title;
  int? productId;

  factory OptionItem.fromJson(Map<String, dynamic> json) => OptionItem(
        id: json["id"],
        price: json["price"]?.toDouble(),
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
