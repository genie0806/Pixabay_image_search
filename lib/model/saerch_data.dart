import 'package:json_annotation/json_annotation.dart';

part 'hits.g.dart';

@JsonSerializable()
class Hits {
  String pageURL;
  String tags;
  String previewURL;
  String webformatURL;
  int views;
  int downloads;
  int likes;
  int comments;
  String user;

  Hits(this.pageURL, this.comments, this.downloads, this.previewURL, this.likes,
      this.tags, this.user, this.views, this.webformatURL);

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);
  Map<String, dynamic> toJson() => _$HitsToJson(this);
}
