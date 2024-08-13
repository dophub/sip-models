import 'package:background_json_parser/background_json_parser.dart';

class StartOrderCancelVerifyModel extends IBaseModel<StartOrderCancelVerifyModel> {
  String? transactionId;
  String? ref;

  StartOrderCancelVerifyModel({
    this.transactionId,
    this.ref,
  });

  @override
  fromJson(Map<String, dynamic> json) => StartOrderCancelVerifyModel(
        transactionId: json["transaction_id"],
        ref: json["ref"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "transaction_id": transactionId,
        "ref": ref,
      };
}
