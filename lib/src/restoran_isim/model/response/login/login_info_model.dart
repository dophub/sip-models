import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

import '../../other/multi_item_picker_widget_model.dart';

class LoginInfoModel extends IBaseModel<LoginInfoModel> {
  LoginInfoModel({
    this.transactionId,
    this.completed,
    this.multipleDealer,
    this.dealers,
  });

  String? transactionId;
  bool? completed;
  bool? multipleDealer;
  List<LoginDealerInfoModel>? dealers;

  @override
  LoginInfoModel fromJson(Map json) => LoginInfoModel(
        transactionId: json['transaction_id'],
        completed: json['completed'],
        multipleDealer: json['multiple_dealer'] ?? false,
        dealers: json['dealers'] == null
            ? []
            : List<LoginDealerInfoModel>.from(json['dealers'].map((x) => LoginDealerInfoModel.fromMap(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'transaction_id': transactionId,
        'completed': completed,
        'multiple_dealer': multipleDealer ?? false,
        'dealers': List<dynamic>.from(dealers!.map((x) => x.toMap())),
      };
}

class LoginDealerInfoModel implements IMultiItemPickerWidgetModel {
  LoginDealerInfoModel({
    this.id,
    this.dealerName,
    this.listImage,
  });

  int? id;
  String? dealerName;
  ImagesModel? listImage;

  factory LoginDealerInfoModel.fromMap(Map<String, dynamic> json) => LoginDealerInfoModel(
        id: json['id'],
        dealerName: json['dealer_name'],
        listImage: ImagesModel.fromJson(json['list_image']),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'dealer_name': dealerName,
        'list_image': listImage!.toJson(),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => dealerName ?? '';
}
