import 'package:background_json_parser/background_json_parser.dart';

class AddPrinterWorkflowModel extends IBaseModel<AddPrinterWorkflowModel> {
  final int? dealerId;
  final String? orderPointId;
  final String? paymentModelId;
  final int? posStationPrinterId;
  final String? printTemplateId;
  final String? targetOrderStatusId;
  final bool? isPaymentNotification;
  final String? dealerStationId;
  final String? newDealerStationId;

  AddPrinterWorkflowModel({
    required this.dealerId,
    required this.orderPointId,
    required this.paymentModelId,
    required this.posStationPrinterId,
    required this.printTemplateId,
    required this.targetOrderStatusId,
    required this.isPaymentNotification,
    required this.dealerStationId,
    required this.newDealerStationId,
  });

  @override
  fromJson(Map<String, dynamic> json) => AddPrinterWorkflowModel(
        dealerId: json["dealer_id"],
        orderPointId: json["order_point_id"],
        paymentModelId: json["payment_model_id"],
        posStationPrinterId: json["pos_station_printer_id"],
        printTemplateId: json["print_template_id"],
        targetOrderStatusId: json["target_order_status_id"],
        isPaymentNotification: json["is_payment_notification"],
        dealerStationId: json["dealer_station_id"],
        newDealerStationId: json["new_dealer_station_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "order_point_id": orderPointId,
        "payment_model_id": paymentModelId,
        "pos_station_printer_id": posStationPrinterId,
        "print_template_id": printTemplateId,
        "target_order_status_id": targetOrderStatusId,
        "is_payment_notification": isPaymentNotification,
        "dealer_station_id": dealerStationId,
        "new_dealer_station_id": newDealerStationId,
      };
}
