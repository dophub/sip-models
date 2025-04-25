import 'package:background_json_parser/background_json_parser.dart';

import '../../../../ri_enum.dart';

class IPPrinterModel extends IPrinterModel<IPPrinterModel> {
  String? ipAddress;
  int? port;

  @override
  late PrinterPaperTypeEnum paperSize;

  @override
  PrinterTypeEnum type = PrinterTypeEnum.NETWORK;

  IPPrinterModel({
    this.ipAddress,
    this.port,
    PrinterPaperTypeEnum? paperSize,
  }) {
    this.paperSize = paperSize ?? PrinterPaperTypeEnum.mm80;
  }

  @override
  fromJson(Map<String, dynamic> json) => IPPrinterModel(
        ipAddress: json["ipAddress"],
        port: json["port"],
        paperSize: json["paperSize"] == PrinterPaperTypeEnum.mm58.name
            ? PrinterPaperTypeEnum.mm58
            : PrinterPaperTypeEnum.mm80,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "ipAddress": ipAddress,
      "port": port,
      "paperSize": paperSize.name,
      "type": type.name,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }
}

class USBPrinterModel extends IPrinterModel<USBPrinterModel> {
  String? name;
  String? vendorId;
  String? productId;

  @override
  PrinterPaperTypeEnum paperSize;

  @override
  PrinterTypeEnum type = PrinterTypeEnum.USB;

  USBPrinterModel({
    this.name,
    this.vendorId,
    this.productId,
    this.paperSize = PrinterPaperTypeEnum.mm80,
  });

  factory USBPrinterModel.fromJson(
    Map<String, dynamic> json, {
    PrinterPaperTypeEnum? paperSize,
  }) =>
      USBPrinterModel(
        name: json["name"],
        vendorId: json["vendorId"],
        productId: json["productId"],
        paperSize: paperSize ?? PrinterPaperTypeEnum.mm80,
      );

  @override
  fromJson(Map<String, dynamic> json) => USBPrinterModel(
        name: json["name"],
        vendorId: json["vendorId"],
        productId: json["productId"],
        paperSize: json["paperSize"] == PrinterPaperTypeEnum.mm58.name
            ? PrinterPaperTypeEnum.mm58
            : PrinterPaperTypeEnum.mm80,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "name": name,
      "vendorId": vendorId,
      "productId": productId,
      "paperSize": paperSize.name,
      "type": type.name,
    };
    return map;
  }
}

abstract class IPrinterModel<T> extends IBaseModel<T> {
  PrinterTypeEnum get type;

  PrinterPaperTypeEnum get paperSize;
}
