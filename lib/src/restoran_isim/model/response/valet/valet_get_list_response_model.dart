import 'package:background_json_parser/background_json_parser.dart';

class ValetResponseModel extends IBaseModel<ValetResponseModel> {
  ValetResponseModel({
    this.id,
    this.plate,
    this.description,
    this.statusId,
    this.phone,
  });

  int? id;
  String? plate;
  String? description;
  String? statusId;
  String? phone;

  @override
  ValetResponseModel fromJson(Map json) => ValetResponseModel(
        id: json['id'] as int?,
        plate: json['plate'] as String?,
        description: json['vehicle_model'] as String?,
        statusId: json['status_id'] as String?,
        phone: json['mobile_phone'] ??= 'Hata',
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'plate': plate,
        'vehicle_model': description,
        'status_id': statusId,
        'mobile_phone': phone,
      };
}
