import 'package:background_json_parser/background_json_parser.dart';

class PayByPaycellSunmiModel extends IBaseModel<PayByPaycellSunmiModel> {
  int? terminallId;
  int? orderId;
  String? paymentTypeCode;
  bool? invoiceActive;
  bool? payDeskAmount;
  String? customerName;
  String? infoPhoneNumber;
  PayByPaycellSunmiInvoiceModel? invoice;

  PayByPaycellSunmiModel({
    this.terminallId,
    this.orderId,
    this.paymentTypeCode,
    this.invoiceActive,
    this.payDeskAmount,
    this.customerName,
    this.infoPhoneNumber,
    this.invoice,
  });

  @override
  fromJson(Map<String, dynamic> json) => PayByPaycellSunmiModel(
        terminallId: json["terminall_id"],
        orderId: json["order_id"],
        paymentTypeCode: json["payment_type_code"],
        invoiceActive: json["invoice_active"],
        payDeskAmount: json["pay_desk_amount"],
        customerName: json["customer_name"],
        infoPhoneNumber: json["info_phone_number"],
        invoice: json["invoice"] == null ? null : PayByPaycellSunmiInvoiceModel.fromJson(json["invoice"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "terminall_id": terminallId,
        "order_id": orderId,
        "payment_type_code": paymentTypeCode,
        "invoice_active": invoiceActive,
        "pay_desk_amount": payDeskAmount,
        "customer_name": customerName,
        "info_phone_number": infoPhoneNumber,
        "invoice": invoice?.toJson(),
      };
}

class PayByPaycellSunmiInvoiceModel {
  String? name;
  String? taxnumber;
  String? taxoffice;
  String? address;
  String? email;
  String? phone;

  PayByPaycellSunmiInvoiceModel({
    this.name,
    this.taxnumber,
    this.taxoffice,
    this.address,
    this.email,
    this.phone,
  });

  factory PayByPaycellSunmiInvoiceModel.fromJson(Map<String, dynamic> json) => PayByPaycellSunmiInvoiceModel(
        name: json["name"],
        taxnumber: json["taxnumber"],
        taxoffice: json["taxoffice"],
        address: json["address"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "taxnumber": taxnumber,
        "taxoffice": taxoffice,
        "address": address,
        "email": email,
        "phone": phone,
      };
}
