// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryModel {
    String name;
  String id;
  String iamgeUrl;
  CategoryModel({
    required this.name,
    required this.id,
    required this.iamgeUrl,
  });
  

  CategoryModel copyWith({
    String? name,
    String? id,
    String? iamgeUrl,
  }) {
    return CategoryModel(
      name: name ?? this.name,
      id: id ?? this.id,
      iamgeUrl: iamgeUrl ?? this.iamgeUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'iamgeUrl': iamgeUrl,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] as String,
      id: map['id'] as String,
      iamgeUrl: map['iamgeUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryModel(name: $name, id: $id, iamgeUrl: $iamgeUrl)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.id == id &&
      other.iamgeUrl == iamgeUrl;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ iamgeUrl.hashCode;
}
