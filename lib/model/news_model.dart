import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
  String? author;
  String? title;
  String? description;
  String? urlToImage;
  String? content;

  NewsModel({
    this.author = '',
    this.title = '',
    this.description = '',
    this.urlToImage = '',
    this.content = '',
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}
