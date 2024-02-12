import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_null_aware_operators

class ItemModel {
  String? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount;
  String? itemsDatetime;
  String? itemsCategoriesId;
  String? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatetime;

  ItemModel({this.itemsId, this.itemsName, this.itemsNameAr, this.itemsDesc, this.itemsDescAr, this.itemsImage, this.itemsCount, this.itemsActive, this.itemsPrice, this.itemsDiscount, this.itemsDatetime, this.itemsCategoriesId, this.categoriesId, this.categoriesName, this.categoriesNameAr, this.categoriesImage, this.categoriesDatetime});

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    ItemModel model = ItemModel();
    model.itemsId = map['items_id'].toString();
    model.itemsName = map['items_name'].toString();
    model.itemsNameAr = map['items_name_ar'].toString();
    model.itemsDesc = map['items_desc'].toString();
    model.itemsDescAr = map['items_desc_ar'].toString();
    model.itemsImage = map['items_image'].toString();
    model.itemsCount = map['items_count'].toString();
    model.itemsActive = map['items_active'].toString();
    model.itemsPrice = map['items_price'].toString();
    model.itemsDiscount = map['items_discount'].toString();
    model.itemsDatetime = map['items_datetime'].toString();
    model.itemsCategoriesId = map['items_categories_id'].toString();
    model.categoriesId = map['categories_id'].toString();
    model.categoriesName = map['categories_name'].toString();
    model.categoriesNameAr = map['categories_name_ar'].toString();
    model.categoriesImage = map['categories_image'].toString();
    model.categoriesDatetime = map['categories_datetime'].toString();
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

  factory ItemModel.fromJson(String source) => ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant ItemModel other) {
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
