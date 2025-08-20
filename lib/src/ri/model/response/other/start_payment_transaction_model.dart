import 'package:background_json_parser/background_json_parser.dart';

class StartPaymentTransactionModel extends IBaseModel<StartPaymentTransactionModel> {
  int? id;
  String? transactionId;
  String? sourceId;
  String? amount;
  String? paymentMethod;
  String? status;
  String? trackId;
  String? serialNo;
  String? ip;
  StartPaymentTransactionPaymentInfoModel? paymentInfo;
  DateTime? reportDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? currencyId;
  int? customerId;
  int? dealerId;
  int? mainBrandId;
  int? paymentTypeId;
  String? sourceTypeId;
  bool? invoicestatus;
  String? paymentCodeId;
  String? paymentTagsId;

  StartPaymentTransactionModel({
    this.id,
    this.transactionId,
    this.sourceId,
    this.amount,
    this.paymentMethod,
    this.status,
    this.trackId,
    this.serialNo,
    this.ip,
    this.paymentInfo,
    this.reportDate,
    this.createdAt,
    this.updatedAt,
    this.currencyId,
    this.customerId,
    this.dealerId,
    this.mainBrandId,
    this.paymentTypeId,
    this.sourceTypeId,
    this.invoicestatus,
    this.paymentCodeId,
    this.paymentTagsId,
  });

  @override
  fromJson(Map<String, dynamic> json) => StartPaymentTransactionModel(
        id: json["id"],
        transactionId: json["transaction_id"],
        sourceId: json["source_id"],
        amount: json["amount"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        trackId: json["track_id"],
        serialNo: json["serial_no"],
        ip: json["ip"],
        paymentInfo: json["payment_info"] == null
            ? null
            : StartPaymentTransactionPaymentInfoModel.fromJson(json["payment_info"]),
        reportDate: json["report_date"] == null ? null : DateTime.parse(json["report_date"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        currencyId: json["currency_id"],
        customerId: json["customer_id"],
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        paymentTypeId: json["payment_type_id"],
        sourceTypeId: json["source_type_id"],
        invoicestatus: json["invoicestatus"],
        paymentCodeId: json["payment_code_id"],
        paymentTagsId: json["payment_tags_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_id": transactionId,
        "source_id": sourceId,
        "amount": amount,
        "payment_method": paymentMethod,
        "status": status,
        "track_id": trackId,
        "serial_no": serialNo,
        "ip": ip,
        "payment_info": paymentInfo?.toJson(),
        "report_date": reportDate?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "currency_id": currencyId,
        "customer_id": customerId,
        "dealer_id": dealerId,
        "main_brand_id": mainBrandId,
        "payment_type_id": paymentTypeId,
        "source_type_id": sourceTypeId,
        "invoicestatus": invoicestatus,
        "payment_code_id": paymentCodeId,
        "payment_tags_id": paymentTagsId,
      };
}

class StartPaymentTransactionPaymentInfoModel {
  String? ip;
  StartPaymentTransactionUserModel? user;
  List<StartPaymentTransactionItemModel>? items;
  int? amount;
  String? serialNo;
  String? sourceId;
  String? sourceType;
  String? paymentType;
  bool? isFullPayment;

  StartPaymentTransactionPaymentInfoModel({
    this.ip,
    this.user,
    this.items,
    this.amount,
    this.serialNo,
    this.sourceId,
    this.sourceType,
    this.paymentType,
    this.isFullPayment,
  });

  factory StartPaymentTransactionPaymentInfoModel.fromJson(Map<String, dynamic> json) =>
      StartPaymentTransactionPaymentInfoModel(
        ip: json["ip"],
        user: json["user"] == null ? null : StartPaymentTransactionUserModel.fromJson(json["user"]),
        items: json["items"] == null
            ? []
            : List<StartPaymentTransactionItemModel>.from(
                json["items"]!.map((x) => StartPaymentTransactionItemModel.fromJson(x))),
        amount: json["amount"],
        serialNo: json["serial_no"],
        sourceId: json["source_id"],
        sourceType: json["source_type"],
        paymentType: json["payment_type"],
        isFullPayment: json["is_full_payment"],
      );

  Map<String, dynamic> toJson() => {
        "ip": ip,
        "user": user?.toJson(),
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "amount": amount,
        "serial_no": serialNo,
        "source_id": sourceId,
        "source_type": sourceType,
        "payment_type": paymentType,
        "is_full_payment": isFullPayment,
      };
}

class StartPaymentTransactionItemModel {
  int? id;
  int? count;

  StartPaymentTransactionItemModel({
    this.id,
    this.count,
  });

  factory StartPaymentTransactionItemModel.fromJson(Map<String, dynamic> json) => StartPaymentTransactionItemModel(
        id: json["id"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
      };
}

class StartPaymentTransactionUserModel {
  int? exp;
  int? iat;
  String? client;
  int? expires;
  int? userId;
  bool? isDepot;
  int? dealerId;
  List<String>? userRole;
  String? userType;
  String? sessionId;
  String? userTitle;
  String? clientPoint;
  String? mobilePhone;
  int? mainBrandId;
  int? userDealerId;

  StartPaymentTransactionUserModel({
    this.exp,
    this.iat,
    this.client,
    this.expires,
    this.userId,
    this.isDepot,
    this.dealerId,
    this.userRole,
    this.userType,
    this.sessionId,
    this.userTitle,
    this.clientPoint,
    this.mobilePhone,
    this.mainBrandId,
    this.userDealerId,
  });

  factory StartPaymentTransactionUserModel.fromJson(Map<String, dynamic> json) => StartPaymentTransactionUserModel(
        exp: json["exp"],
        iat: json["iat"],
        client: json["client"],
        expires: json["expires"],
        userId: json["user_id"],
        isDepot: json["is_depot"],
        dealerId: json["dealer_id"],
        userRole: json["user_role"] == null ? [] : List<String>.from(json["user_role"]!.map((x) => x)),
        userType: json["user_type"],
        sessionId: json["session_id"],
        userTitle: json["user_title"],
        clientPoint: json["client_point"],
        mobilePhone: json["mobile_phone"],
        mainBrandId: json["main_brand_id"],
        userDealerId: json["user_dealer_id"],
      );

  Map<String, dynamic> toJson() => {
        "exp": exp,
        "iat": iat,
        "client": client,
        "expires": expires,
        "user_id": userId,
        "is_depot": isDepot,
        "dealer_id": dealerId,
        "user_role": userRole == null ? [] : List<dynamic>.from(userRole!.map((x) => x)),
        "user_type": userType,
        "session_id": sessionId,
        "user_title": userTitle,
        "client_point": clientPoint,
        "mobile_phone": mobilePhone,
        "main_brand_id": mainBrandId,
        "user_dealer_id": userDealerId,
      };
}
