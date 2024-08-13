
class OrderCancelModel {
  String? codeTitle;
  String? cancelCode;
  String? cancelOrReject;

  OrderCancelModel({this.codeTitle, this.cancelCode, this.cancelOrReject});

  factory OrderCancelModel.fromJson(Map<String, dynamic> json) => OrderCancelModel(
        codeTitle: json['code_title'],
        cancelCode: json['cancel_code'],
        cancelOrReject: json['cancel_reject'], //'C':Cancel, 'R':Reject
      );

  Map<String, dynamic> toJson() => {
        'code_title': codeTitle,
        'cancel_code': cancelCode,
        'cancel_reject': cancelOrReject,
      };
}
