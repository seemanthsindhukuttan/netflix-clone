import 'package:json_annotation/json_annotation.dart';

part 'result_top_rated.g.dart';

@JsonSerializable()
class ResultTopRated {
  @JsonKey(name: 'poster_path')
  String? posterPath;

  ResultTopRated({this.posterPath});

  factory ResultTopRated.fromJson(Map<String, dynamic> json) {
    return _$ResultTopRatedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultTopRatedToJson(this);
}
