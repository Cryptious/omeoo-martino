
import 'package:omeoo_martino/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  int? price;
  List<GalleryModel>? images;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.images,

  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    price = json['Price'];
    images = json['images']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
    
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'images': images?.map((gallery) => gallery.toJson()).toList(),
    };
  }
}

class UninitializedProductModel extends ProductModel {}
