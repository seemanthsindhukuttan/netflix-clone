// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_top_rated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTopRatedModel _$HomeTopRatedModelFromJson(Map<String, dynamic> json) =>
    HomeTopRatedModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ResultTopRated.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeTopRatedModelToJson(HomeTopRatedModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
