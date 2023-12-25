import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'rating') RatingModel? rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
abstract class RatingModel with _$RatingModel {
  const factory RatingModel({
    @JsonKey(name: 'rate') double? rate,
    @JsonKey(name: 'count') int? count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
