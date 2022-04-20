
class DealerSearchRequestModel {
  DealerSearchRequestModel({
    this.keyword,
    this.filter,
    this.districtId,
    this.neighborhoodId,
    this.addressId,
    this.latlng,
  });

  String? keyword;
  DealerSearchFilterModel? filter;
  int? districtId;
  int? neighborhoodId;
  String? addressId;
  String? latlng;

  Map<String, dynamic> toJson() => {
    "keyword": keyword,
    "filter": filter?.toJson(),
    "district_id": districtId,
    "neighborhood_id": neighborhoodId,
    "address_id": addressId,
    "latlng": latlng,
  };
}

class DealerSearchFilterModel {
  DealerSearchFilterModel({
    this.foodCategory,
    this.paymentType,
    this.deliveryTime,
    this.maxPackageAmount,
    this.orderBy,
  });

  List<String>? foodCategory;
  List<String>? paymentType;
  int? deliveryTime;
  int? maxPackageAmount;
  String? orderBy;

  Map<String, dynamic> toJson() => {
    "food_category": List<dynamic>.from(foodCategory!.map((x) => x)),
    "payment_type": List<dynamic>.from(paymentType!.map((x) => x)),
    "delivery_time": deliveryTime,
    "max_package_amount": maxPackageAmount,
    "orderBy": orderBy,
  };
}
