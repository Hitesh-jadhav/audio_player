import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final int id;
  final String? title; // Nullable
  final String? description; // Nullable
  final String? image; // Nullable

  Product({
    required this.id,
    this.title, // Nullable
    this.description, // Nullable
    this.image, // Nullable
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
