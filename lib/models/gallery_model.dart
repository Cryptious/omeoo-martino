class GalleryModel {
  int? id;
  String? img_name;

  GalleryModel({
    this.id,
    this.img_name,
  });

  GalleryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img_name = json['img_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'img_name': img_name,
    };
  }
}
