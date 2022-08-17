import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'popular_movies_model.g.dart';

@JsonSerializable()
class PopularMoviesModel {
  List<Result> results;

  PopularMoviesModel({this.results = const []});

  factory PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesModelToJson(this);
}
