import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/other/images_model.dart';

class DealerStationListModel extends IBaseModel<DealerStationListModel> {
  int? id;
  String? dealerName;
  ImagesModel? listImage;

  DealerStationListModel({this.id, this.dealerName, this.listImage});

  @override
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dealerName = json['dealer_name'];
    listImage = json['list_image'] != null ? ImagesModel.fromJson(json['list_image']) : null;
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dealer_name'] = dealerName;
    if (listImage != null) {
      data['list_image'] = listImage!.toJson();
    }
    return data;
  }
}
