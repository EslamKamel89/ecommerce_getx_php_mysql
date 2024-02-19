// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CartModel {
  String? totalprice;
  String? countitems;
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
  String? cartId;
  String? cartUserid;
  String? cartItemid;
  CartModel({
    this.totalprice,
    this.countitems,
    this.itemsId,
    this.itemsName,
    this.itemsNameAr,
    this.itemsDesc,
    this.itemsDescAr,
    this.itemsImage,
    this.itemsCount,
    this.itemsActive,
    this.itemsPrice,
    this.itemsDiscount,
    this.itemsDatetime,
    this.itemsCategoriesId,
    this.cartId,
    this.cartUserid,
    this.cartItemid,
  });

  CartModel copyWith({
    String? totalprice,
    String? countitems,
    String? itemsId,
    String? itemsName,
    String? itemsNameAr,
    String? itemsDesc,
    String? itemsDescAr,
    String? itemsImage,
    String? itemsCount,
    String? itemsActive,
    String? itemsPrice,
    String? itemsDiscount,
    String? itemsDatetime,
    String? itemsCategoriesId,
    String? cartId,
    String? cartUserid,
    String? cartItemid,
  }) {
    return CartModel(
      totalprice: totalprice ?? this.totalprice,
      countitems: countitems ?? this.countitems,
      itemsId: itemsId ?? this.itemsId,
      itemsName: itemsName ?? this.itemsName,
      itemsNameAr: itemsNameAr ?? this.itemsNameAr,
      itemsDesc: itemsDesc ?? this.itemsDesc,
      itemsDescAr: itemsDescAr ?? this.itemsDescAr,
      itemsImage: itemsImage ?? this.itemsImage,
      itemsCount: itemsCount ?? this.itemsCount,
      itemsActive: itemsActive ?? this.itemsActive,
      itemsPrice: itemsPrice ?? this.itemsPrice,
      itemsDiscount: itemsDiscount ?? this.itemsDiscount,
      itemsDatetime: itemsDatetime ?? this.itemsDatetime,
      itemsCategoriesId: itemsCategoriesId ?? this.itemsCategoriesId,
      cartId: cartId ?? this.cartId,
      cartUserid: cartUserid ?? this.cartUserid,
      cartItemid: cartItemid ?? this.cartItemid,
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalprice'] = totalprice;
    data['countitems'] = countitems;
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_discount'] = itemsDiscount;
    data['items_datetime'] = itemsDatetime;
    data['items_categories_id'] = itemsCategoriesId;
    data['cart_id'] = cartId;
    data['cart_userid'] = cartUserid;
    data['cart_itemid'] = cartItemid;
    return data;
  }

  CartModel.fromMap(Map<String, dynamic> map) {
    totalprice = map['totalprice'].toString();
    countitems = map['countitems'].toString();
    itemsId = map['items_id'].toString();
    itemsName = map['items_name'].toString();
    itemsNameAr = map['items_name_ar'].toString();
    itemsDesc = map['items_desc'].toString();
    itemsDescAr = map['items_desc_ar'].toString();
    itemsImage = map['items_image'].toString();
    itemsCount = map['items_count'].toString();
    itemsActive = map['items_active'].toString();
    itemsPrice = map['items_price'].toString();
    itemsDiscount = map['items_discount'].toString();
    itemsDatetime = map['items_datetime'].toString();
    itemsCategoriesId = map['items_categories_id'].toString();
    cartId = map['cart_id'].toString();
    cartUserid = map['cart_userid'].toString();
    cartItemid = map['cart_itemid'].toString();
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) => CartModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CartModel(totalprice: $totalprice, countitems: $countitems, itemsId: $itemsId, itemsName: $itemsName, itemsNameAr: $itemsNameAr, itemsDesc: $itemsDesc, itemsDescAr: $itemsDescAr, itemsImage: $itemsImage, itemsCount: $itemsCount, itemsActive: $itemsActive, itemsPrice: $itemsPrice, itemsDiscount: $itemsDiscount, itemsDatetime: $itemsDatetime, itemsCategoriesId: $itemsCategoriesId, cartId: $cartId, cartUserid: $cartUserid, cartItemid: $cartItemid)';
  }

  @override
  bool operator ==(covariant CartModel other) {
    if (identical(this, other)) return true;

    return other.totalprice == totalprice &&
        other.countitems == countitems &&
        other.itemsId == itemsId &&
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
        other.cartId == cartId &&
        other.cartUserid == cartUserid &&
        other.cartItemid == cartItemid;
  }

  @override
  int get hashCode {
    return totalprice.hashCode ^
        countitems.hashCode ^
        itemsId.hashCode ^
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
        cartId.hashCode ^
        cartUserid.hashCode ^
        cartItemid.hashCode;
  }
}
