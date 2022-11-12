// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

ProductDetails productDetailsFromJson(String str) =>
    ProductDetails.fromJson(json.decode(str));

String productDetailsToJson(ProductDetails data) => json.encode(data.toJson());

class ProductDetails {
  ProductDetails({
    this.name,
    this.price,
    this.discound,
    this.image,
  });

  String? name;
  String? price;
  String? discound;
  String? image;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        name: json["name"],
        price: json["price"],
        discound: json["discound"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "discound": discound,
        "image": image,
      };
}
