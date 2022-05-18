// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResponse<T> _$ArticleResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ArticleResponse<T>(
      fromJsonT(json['results']),
      json['status'] as String,
      json['copyright'] as String,
      json['num_results'] as int,
    );

Map<String, dynamic> _$ArticleResponseToJson<T>(
  ArticleResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': toJsonT(instance.articles),
      'status': instance.status,
      'copyright': instance.copyright,
      'num_results': instance.numberResult,
    };

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      json['id'] as int,
      (json['media'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['published_date'] as String,
      json['title'] as String,
      json['abstract'] as String,
      json['updated'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'media': instance.media,
      'published_date': instance.publishedDate,
      'title': instance.title,
      'abstract': instance.abstract,
      'updated': instance.updated,
      'url': instance.url,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      (json['media-metadata'] as List<dynamic>?)
          ?.map((e) => MediaMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'media-metadata': instance.mediaMetadata,
    };

MediaMetaData _$MediaMetaDataFromJson(Map<String, dynamic> json) =>
    MediaMetaData(
      json['url'] as String,
    );

Map<String, dynamic> _$MediaMetaDataToJson(MediaMetaData instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
