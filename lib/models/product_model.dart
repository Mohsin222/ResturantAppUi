import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String name;
  String price;
  String iamgeUrl;
  String categoryName;
  ProductModel({
    required this.name,
    required this.price,
    required this.iamgeUrl,
    required this.categoryName,
  });
  

  ProductModel copyWith({
    String? name,
    String? price,
    String? iamgeUrl,
    String? categoryName,
  }) {
    return ProductModel(
      name: name ?? this.name,
      price: price ?? this.price,
      iamgeUrl: iamgeUrl ?? this.iamgeUrl,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'iamgeUrl': iamgeUrl,
      'categoryName': categoryName,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] as String,
      price: map['price'] as String,
      iamgeUrl: map['iamgeUrl'] as String,
      categoryName: map['categoryName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(name: $name, price: $price, iamgeUrl: $iamgeUrl, categoryName: $categoryName)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.price == price &&
      other.iamgeUrl == iamgeUrl &&
      other.categoryName == categoryName;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      price.hashCode ^
      iamgeUrl.hashCode ^
      categoryName.hashCode;
  }
}
