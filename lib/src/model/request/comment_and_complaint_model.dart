import 'package:background_json_parser/background_json_parser.dart';

class CommentAndComplaintModel extends IBaseModel<CommentAndComplaintModel> {
  CommentAndComplaintModel({
    this.nameSurname,
    this.phone,
    this.review,
    this.adviceStatusId,
    this.satisfactionStatusId,
    this.qrCode,
  });

  String? nameSurname;
  String? phone;
  String? review;
  String? adviceStatusId;
  String? satisfactionStatusId;
  String? qrCode;

  @override
  Map<String, dynamic> toJson() => {
    "name_surname": nameSurname,
    "phone": phone,
    "review": review,
    "advice_status_id": adviceStatusId,
    "satisfaction_status_id": satisfactionStatusId,
    "qr_code": qrCode,
  };

  @override
  CommentAndComplaintModel fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }
}
