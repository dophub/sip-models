
/// Ürün rsponse de olan resim modelidir
class ImagesModel {
  String? imageUrl;
  int? id;
  int? listOrder;
  String? imageSizeId;

  ImagesModel({this.id,this.imageUrl, this.listOrder, this.imageSizeId});

  factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
    id : json['id'],
    imageUrl : json['image_url'] ?? '',
    listOrder : json['list_order'],
    imageSizeId : json['image_size_id'],
  );

  Map<String, dynamic> toJson() => {
    'id' : id,
    'image_url' : imageUrl,
    'list_order' : listOrder,
    'image_size_id' : imageSizeId,
  };
}