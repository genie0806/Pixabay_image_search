// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hits _$HitsFromJson(Map<String, dynamic> json) => Hits(
      json['pageURL'] as String,
      json['comments'] as int,
      json['downloads'] as int,
      json['previewURL'] as String,
      json['likes'] as int,
      json['tags'] as String,
      json['user'] as String,
      json['views'] as int,
      json['webformatURL'] as String,
    );

Map<String, dynamic> _$HitsToJson(Hits instance) => <String, dynamic>{
      'pageURL': instance.pageURL,
      'tags': instance.tags,
      'previewURL': instance.previewURL,
      'webformatURL': instance.webformatURL,
      'views': instance.views,
      'downloads': instance.downloads,
      'likes': instance.likes,
      'comments': instance.comments,
      'user': instance.user,
    };
