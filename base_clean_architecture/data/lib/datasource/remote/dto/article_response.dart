import 'package:json_annotation/json_annotation.dart';

part 'article_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ArticleResponse<T> {
  @JsonKey(name: 'results')
  final T articles;
  final String status;
  final String copyright;
  @JsonKey(name: 'num_results')
  final int numberResult;

  ArticleResponse(
      this.articles, this.status, this.copyright, this.numberResult);

  factory ArticleResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ArticleResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$ArticleResponseToJson<T>(this, toJsonT);
}

@JsonSerializable()
class Article {
  final int id;
  final List<Media> media;
  @JsonKey(name: 'published_date')
  final String publishedDate;
  final String title;
  final String abstract;
  final String updated;
  final String url;

  Article(this.id, this.media, this.publishedDate, this.title, this.abstract,
      this.updated, this.url);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Media {
  @JsonKey(name: 'media-metadata')
  final List<MediaMetaData>? mediaMetadata;

  Media(this.mediaMetadata);

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class MediaMetaData {
  final String url;

  MediaMetaData(this.url);

  factory MediaMetaData.fromJson(Map<String, dynamic> json) =>
      _$MediaMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaMetaDataToJson(this);
}
