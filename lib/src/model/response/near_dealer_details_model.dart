
import 'dart:convert';

import 'package:sip_models/src/model/general/menu_detail_model.dart';



List<NearDealerDetailsModel> nearDealerDetailsModelFromJson(String str) =>
    List<NearDealerDetailsModel>.from(
        json.decode(str).map((x) => NearDealerDetailsModel.fromJson(x)));

/*String nearDealerDetailsModelToJson(List<NearDealerDetailsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));*/

class NearDealerDetailsModel {
  int? id;
  String? menuName;
  int? menuOrder;
  List<Categories>? categories;

  NearDealerDetailsModel(
      {this.id, this.menuName, this.menuOrder, this.categories});

  NearDealerDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    menuName = json['menu_name'];
    menuOrder = json['menu_order'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['menu_name'] = this.menuName;
    data['menu_order'] = this.menuOrder;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}

class Categories {
  int? id;
  List<ProductModel>? products;
  int? listOrder;
  String? categoryName;
  String? menuListTypeId;

  Categories(
      {this.id,
      this.products,
      this.listOrder,
      this.categoryName,
      this.menuListTypeId});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['products'] != null) {
      products = <ProductModel>[];
      json['products'].forEach((v) {
        products!.add(ProductModel.fromJson(v));
      });
    }
    listOrder = json['list_order'];
    categoryName = json['category_name'];
    menuListTypeId = json['menu_list_type_id'];
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['list_order'] = this.listOrder;
    data['category_name'] = this.categoryName;
    data['menu_list_type_id'] = this.menuListTypeId;
    return data;
  }*/
}

class Price {
  int? id;
  double? price;
  bool? isDefault;
  String? orderDeliveryTypeId;

  Price({this.id, this.price, this.isDefault, this.orderDeliveryTypeId});

  Price.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    isDefault = json['is_default'];
    orderDeliveryTypeId = json['order_delivery_type_id'];
  }

 /* Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['is_default'] = this.isDefault;
    data['order_delivery_type_id'] = this.orderDeliveryTypeId;
    return data;
  }*/
}

class Images {
  String? imageUrl;
  int? listOrder;
  String? imageSizeId;

  Images({this.imageUrl, this.listOrder, this.imageSizeId});

  Images.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    listOrder = json['list_order'];
    imageSizeId = json['image_size_id'];
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    data['list_order'] = this.listOrder;
    data['image_size_id'] = this.imageSizeId;
    return data;
  }*/
}
