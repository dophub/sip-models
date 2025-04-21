import 'package:background_json_parser/background_json_parser.dart';

import '../../../../ri_enum.dart';

class IPPrinterModel extends IBaseModel<IPPrinterModel> implements IPrinterModel {
  String? ipAddress;
  int? port;

  @override
  PrinterPaperTypeEnum paperSize;

  IPPrinterModel({
    this.ipAddress,
    this.port,
    this.paperSize = PrinterPaperTypeEnum.mm80,
  });

  @override
  fromJson(Map<String, dynamic> json) => IPPrinterModel(
        ipAddress: json["ipAddress"],
        port: json["port"],
        paperSize: json["paper_size"] == PrinterPaperTypeEnum.mm58.name
            ? PrinterPaperTypeEnum.mm58
            : PrinterPaperTypeEnum.mm80,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "ipAddress": ipAddress,
      "port": port,
      "paper_size": paperSize.name,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }
}

class USBPrinterModel extends IBaseModel<USBPrinterModel> implements IPrinterModel {
  String? name;
  String? vendorId;
  String? productId;

  @override
  PrinterPaperTypeEnum paperSize;

  USBPrinterModel({
    this.name,
    this.vendorId,
    this.productId,
    this.paperSize = PrinterPaperTypeEnum.mm58,
  });

  factory USBPrinterModel.fromJson(
    Map<String, dynamic> json, {
    PrinterPaperTypeEnum paperSize = PrinterPaperTypeEnum.mm80,
  }) =>
      USBPrinterModel(
        name: json["name"],
        vendorId: json["vendorId"],
        productId: json["productId"],
        paperSize: paperSize,
      );

  @override
  fromJson(Map<String, dynamic> json) => USBPrinterModel(
        name: json["name"],
        vendorId: json["vendorId"],
        productId: json["productId"],
        paperSize: json["paper_size"] == PrinterPaperTypeEnum.mm58.name
            ? PrinterPaperTypeEnum.mm58
            : PrinterPaperTypeEnum.mm80,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "name": name,
      "vendorId": vendorId,
      "productId": productId,
      "paper_size": paperSize.name,
    };
    return map;
  }
}

abstract class IPrinterModel {
  PrinterPaperTypeEnum get paperSize;
}
