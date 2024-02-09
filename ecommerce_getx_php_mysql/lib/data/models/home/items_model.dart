import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_null_aware_operators

class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  String? itemsDatetime;
  int? itemsCategoriesId;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;

  ItemsModel({this.itemsId, this.itemsName, this.itemsNameAr, this.itemsDesc, this.itemsDescAr, this.itemsImage, this.itemsCount, this.itemsActive, this.itemsPrice, this.itemsDiscount, this.itemsDatetime, this.itemsCategoriesId, this.categoriesId, this.categoriesName, this.categoriesNameAr, this.categoriesImage, this.categoriesDatetime});

  factory ItemsModel.fromMap(Map<String, dynamic> map) {
    ItemsModel model = ItemsModel();
    model.itemsId = map['items_id'];
    model.itemsName = map['items_name'];
    model.itemsNameAr = map['items_name_ar'];
    model.itemsDesc = map['items_desc'];
    model.itemsDescAr = map['items_desc_ar'];
    model.itemsImage = map['items_image'];
    model.itemsCount = map['items_count'];
    model.itemsActive = map['items_active'];
    model.itemsPrice = map['items_price'];
    model.itemsDiscount = map['items_discount'];
    model.itemsDatetime = map['items_datetime'];
    model.itemsCategoriesId = map['items_categories_id'];
    model.categoriesId = map['categories_id'];
    model.categoriesName = map['categories_name'];
    model.categoriesNameAr = map['categories_name_ar'];
    model.categoriesImage = map['categories_image'];
    model.categoriesDatetime = map['categories_datetime'];
    return model;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items_id': itemsId,
      'items_name': itemsName,
      'items_name_ar': itemsNameAr,
      'items_desc': itemsDesc,
      'items_desc_ar': itemsDescAr,
      'items_image': itemsImage,
      'items_count': itemsCount,
      'items_active': itemsActive,
      'items_price': itemsPrice,
      'items_discount': itemsDiscount,
      'items_datetime': itemsDatetime,
      'items_categories_id': itemsCategoriesId,
      'categories_id': categoriesId,
      'categories_name': categoriesName,
      'categories_name_ar': categoriesNameAr,
      'categories_image': categoriesImage,
      'categories_datetime': categoriesDatetime,
    };
  }

  String toJson() => json.encode(toMap());

  factory ItemsModel.fromJson(String source) => ItemsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ItemsModel other) {
    if (identical(this, other)) return true;

    return other.itemsId == itemsId &&
        other.itemsName == itemsName &&
        other.itemsNameAr == itemsNameAr &&
        other.itemsDesc == itemsDesc &&
        other.itemsDescAr == itemsDescAr &&
        other.itemsImage == itemsImage &&
        other.itemsCount == itemsCount &&
        other.itemsActive == itemsActive &&
        other.itemsPrice == itemsPrice &&
        other.itemsDiscount == itemsDiscount &&
        other.itemsDatetime == itemsDatetime &&
        other.itemsCategoriesId == itemsCategoriesId &&
        other.categoriesId == categoriesId &&
        other.categoriesName == categoriesName &&
        other.categoriesNameAr == categoriesNameAr &&
        other.categoriesImage == categoriesImage &&
        other.categoriesDatetime == categoriesDatetime;
  }

  @override
  int get hashCode {
    return itemsId.hashCode ^
        itemsName.hashCode ^
        itemsNameAr.hashCode ^
        itemsDesc.hashCode ^
        itemsDescAr.hashCode ^
        itemsImage.hashCode ^
        itemsCount.hashCode ^
        itemsActive.hashCode ^
        itemsPrice.hashCode ^
        itemsDiscount.hashCode ^
        itemsDatetime.hashCode ^
        itemsCategoriesId.hashCode ^
        categoriesId.hashCode ^
        categoriesName.hashCode ^
        categoriesNameAr.hashCode ^
        categoriesImage.hashCode ^
        categoriesDatetime.hashCode;
  }

  @override
  String toString() {
    return 'ItemsModel(itemsId: $itemsId, itemsName: $itemsName, itemsNameAr: $itemsNameAr, itemsDesc: $itemsDesc, itemsDescAr: $itemsDescAr, itemsImage: $itemsImage, itemsCount: $itemsCount, itemsActive: $itemsActive, itemsPrice: $itemsPrice, itemsDiscount: $itemsDiscount, itemsDatetime: $itemsDatetime, itemsCategoriesId: $itemsCategoriesId, categoriesId: $categoriesId, categoriesName: $categoriesName, categoriesNameAr: $categoriesNameAr, categoriesImage: $categoriesImage, categoriesDatetime: $categoriesDatetime)';
  }
}
