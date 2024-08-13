import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/dealer/dealer_detail_model.dart';


class QrCheckModel extends IBaseModel<QrCheckModel> {
  QrCheckModel({
    this.status,
    this.info,
  });

  String? status;
  TableModel? info;

  @override
  QrCheckModel fromJson(Map json) => QrCheckModel(
        status: json['status'],
        info: json['info'] == null
            ? TableModel(tableCode: '', tableName: '', stationName: '')
            : TableModel.fromJson(json['info']),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
