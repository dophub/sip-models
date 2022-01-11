

class AddressModel {
  AddressModel({
    this.addressId,
    this.type,
    this.title,
    this.cityId,
    this.cityName,
    this.districtId,
    this.districtName,
    this.neighbourhoodId,
    this.neighbourhoodName,
    this.address,
    this.buildingNumber,
    this.floor,
    this.no,
    this.latlng,
    this.addressDetail,
  });

  int? addressId;
  String? type;
  String? title;
  int? cityId;
  String? cityName;
  int? districtId;
  String? districtName;
  int? neighbourhoodId;
  String? neighbourhoodName;
  String? address;
  String? buildingNumber;
  String? floor;
  String? no;
  String? latlng;
  String? addressDetail;

  //todo: RF: tipler DB ile aynı formatta olacak
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      AddressModel(
          addressId: json["addressId"],
          type: json["type"],
          title: json["title"],
          cityId: json["cityId"],
          cityName: json["cityName"],
          districtId: json["districtId"],
          districtName: json["districtName"],
          neighbourhoodId: json["neighbourhoodId"],
          neighbourhoodName: json["neighbourhoodName"],
          address: json["address"],
          buildingNumber: json["buildingNumber"],
          floor: json["floor"],
          no: json["no"],
          latlng: json["latlng"],
          addressDetail: json["addressDetail"]);

  Map<String, dynamic> toJson() => {
        "addressId": addressId,
        "type": type,
        "title": title,
        "cityId": cityId,
        "cityName": cityName,
        "districtId": districtId,
        "districtName": districtName,
        "neighbourhoodId": neighbourhoodId,
        "neighbourhoodName": neighbourhoodName,
        "address": address,
        "buildingNumber": buildingNumber,
        "floor": floor,
        "no": no,
        "latlng": latlng,
        "addressDetail": addressDetail,
      };
}
