// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMoviesModel _$PopularMoviesModelFromJson(Map<String, dynamic> json) =>
    PopularMoviesModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PopularMoviesModelToJson(PopularMoviesModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
