import 'package:json_annotation/json_annotation.dart';

import 'result_top_rated.dart';
part 'home_top_rated_model.g.dart';

@JsonSerializable()
class HomeTopRatedModel {
  List<ResultTopRated> results;

  HomeTopRatedModel({this.results = const []});

  factory HomeTopRatedModel.fromJson(Map<String, dynamic> json) {
    return _$HomeTopRatedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTopRatedModelToJson(this);
}
