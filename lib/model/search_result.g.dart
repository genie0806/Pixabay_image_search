// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchData _$SearchDataFromJson(Map<String, dynamic> json) => SearchData(
      (json['hits'] as List<dynamic>)
          .map((e) => Hits.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int,
      json['totalHits'] as int,
    );

Map<String, dynamic> _$SearchDataToJson(SearchData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };
