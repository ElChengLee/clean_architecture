import 'package:domain/domain.dart';

import '../datasource/local/entity/article_entity.dart';
import '../datasource/remote/dto/article_response.dart';

extension ArticleExtension on Article {
  ArticleModel toModel() => ArticleModel(
      id: id,
      title: title,
      description: abstract,
      imageUrl: media.length > 2
          ? media[2].mediaMetadata![0].url
          : media.length > 1
              ? media[1].mediaMetadata![0].url
              : media.isNotEmpty
                  ? media[0].mediaMetadata![0].url
                  : "",
      articleUrl: url,
      date: publishedDate);

  ArticleEntity toEntity() => ArticleEntity(
      id: id,
      title: title,
      description: abstract,
      imageUrl: media.length > 2
          ? media[2].mediaMetadata![0].url
          : media.length > 1
              ? media[1].mediaMetadata![0].url
              : media.isNotEmpty
                  ? media[0].mediaMetadata![0].url
                  : "",
      articleUrl: url,
      date: publishedDate);
}

extension ArticleEntityExtension on ArticleEntity {
  ArticleModel toModel() => ArticleModel(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      articleUrl: articleUrl,
      date: date);
}
