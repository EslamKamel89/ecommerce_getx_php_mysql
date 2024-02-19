// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CartTotalPriceModel {
  String? totalprice;
  String? totalcount;
  CartTotalPriceModel({
    this.totalprice,
    this.totalcount,
  });

  CartTotalPriceModel copyWith({
    String? totalprice,
    String? totalcount,
  }) {
    return CartTotalPriceModel(
      totalprice: totalprice ?? this.totalprice,
      totalcount: totalcount ?? this.totalcount,
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalprice'] = totalprice;
    data['totalcount'] = totalcount;
    return data;
  }

  CartTotalPriceModel.fromMap(Map<String, dynamic> map) {
    totalprice = map['totalprice'].toString();
    totalcount = map['totalcount'].toString();
  }

  String toJson() => json.encode(toMap());

  factory CartTotalPriceModel.fromJson(String source) =>
      CartTotalPriceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartTotalPriceModel(totalprice: $totalprice, totalcount: $totalcount)';

  @override
  bool operator ==(covariant CartTotalPriceModel other) {
    if (identical(this, other)) return true;

    return other.totalprice == totalprice && other.totalcount == totalcount;
  }

  @override
  int get hashCode => totalprice.hashCode ^ totalcount.hashCode;
}
