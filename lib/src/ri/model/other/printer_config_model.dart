import 'package:background_json_parser/background_json_parser.dart';
import 'package:collection/collection.dart';

import '../../../../ri_enum.dart';

class PrinterConfigModel extends IBaseModel<PrinterConfigModel> {
  PrinterTypeEnum typePrinter;
  String? name;
  String? ipAddress;
  int? port;
  String? vendorId;
  String? productId;
  bool? isBle;
  PrinterPaperTypeEnum paperSize;

  PrinterConfigModel._({
    required this.typePrinter,
    this.name,
    this.ipAddress,
    this.port,
    this.vendorId,
    this.productId,
    this.isBle,
    required this.paperSize,
  });

  PrinterConfigModel.forNetwork({
    this.ipAddress,
    this.port,
    this.paperSize = PrinterPaperTypeEnum.mm80,
  }) : typePrinter = PrinterTypeEnum.NETWORK;

  PrinterConfigModel.forBluetooth({
    this.name,
    this.ipAddress,
    this.isBle = false,
    this.paperSize = PrinterPaperTypeEnum.mm80,
  }) : typePrinter = PrinterTypeEnum.BLUETOOTH;

  PrinterConfigModel.forUSB({
    this.name,
    this.vendorId,
    this.productId,
    this.paperSize = PrinterPaperTypeEnum.mm80,
  }) : typePrinter = PrinterTypeEnum.USB;

  @override
  fromJson(Map<String, dynamic> json) => PrinterConfigModel._(
        typePrinter: PrinterTypeEnum.values
                .firstWhereOrNull((PrinterTypeEnum e) => e.name.toUpperCase() == json["typePrinter"].toUpperCase()) ??
            PrinterTypeEnum.NETWORK,
        name: json["name"],
        ipAddress: json["ipAddress"],
        port: json["port"],
        vendorId: json["vendorId"],
        productId: json["productId"],
        isBle: json["isBle"],
        paperSize: json["paper_size"] == PrinterPaperTypeEnum.mm58.name
            ? PrinterPaperTypeEnum.mm58
            : PrinterPaperTypeEnum.mm80,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "typePrinter": typePrinter.name,
      "name": name,
      "ipAddress": ipAddress,
      "port": port,
      "vendorId": vendorId,
      "productId": productId,
      "isBle": isBle,
      "paper_size": paperSize.name,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }
}
