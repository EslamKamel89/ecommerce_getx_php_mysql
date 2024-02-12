// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_null_aware_operators
import 'dart:convert';

class CategoriesModel {
  String? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;

  CategoriesModel({this.categoriesId, this.categoriesName, this.categoriesNameAr, this.categoriesImage, this.categoriesDatetime});

  factory CategoriesModel.fromMap(Map<String, dynamic> map) {
    CategoriesModel model = CategoriesModel();
    model.categoriesId = map['categories_id'].toString();
    model.categoriesName = map['categories_name'].toString();
    model.categoriesNameAr = map['categories_name_ar'].toString();
    model.categoriesImage = map['categories_image'].toString();
    model.categoriesDatetime = map['categories_datetime'].toString();
    return model;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories_id': categoriesId,
      'categories_name': categoriesName,
      'categories_name_ar': categoriesNameAr,
      'categories_image': categoriesImage,
      'categories_datetime': categoriesDatetime,
    };
  }

  @override
  String toString() {
    return 'CategoriesModel(categoriesId: $categoriesId, categoriesName: $categoriesName, categoriesNameAr: $categoriesNameAr, categoriesImage: $categoriesImage, categoriesDatetime: $categoriesDatetime)';
  }

  String toJson() => json.encode(toMap());

  factory CategoriesModel.fromJson(String source) => CategoriesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant CategoriesModel other) {
    if (identical(this, other)) return true;

    return other.categoriesId == categoriesId && other.categoriesName == categoriesName && other.categoriesNameAr == categoriesNameAr && other.categoriesImage == categoriesImage && other.categoriesDatetime == categoriesDatetime;
  }

  @override
  int get hashCode {
    return categoriesId.hashCode ^ categoriesName.hashCode ^ categoriesNameAr.hashCode ^ categoriesImage.hashCode ^ categoriesDatetime.hashCode;
  }
}
