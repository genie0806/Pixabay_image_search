import 'package:image_search/model/search.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchData {
  late int total;
  late int totalHits;
  late List<Hits> hits;

  SearchData(this.hits, this.total, this.totalHits);
  factory SearchData.fromJson(Map<String, dynamic> json) =>
      _$SearchDataFromJson(json);
  Map<String, dynamic> toJson() => _$SearchDataToJson(this);
}
