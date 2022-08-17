import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'trending_model.g.dart';

@JsonSerializable()
class TrendingModel {
  List<Result> results;

  TrendingModel({this.results = const []});

  factory TrendingModel.fromJson(Map<String, dynamic> json) {
    return _$TrendingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingModelToJson(this);
}
