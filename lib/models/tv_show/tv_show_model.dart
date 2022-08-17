import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'tv_show_model.g.dart';

@JsonSerializable()
class TvShowModel {
  List<Result> results;

  TvShowModel({this.results = const []});

  factory TvShowModel.fromJson(Map<String, dynamic> json) {
    return _$TvShowModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvShowModelToJson(this);
}
