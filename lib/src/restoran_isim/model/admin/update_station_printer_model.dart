import 'package:background_json_parser/background_json_parser.dart';

class UpdateStationPrinterModel extends IBaseModel<UpdateStationPrinterModel> {
  final bool? isDefault;
  final int? printerId;

  UpdateStationPrinterModel({
    required this.isDefault,
    required this.printerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => UpdateStationPrinterModel(
        isDefault: json["is_default"],
        printerId: json["printer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "is_default": isDefault,
        "printer_id": printerId,
      };
}
