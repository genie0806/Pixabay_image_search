import 'package:image_search/model/saerch_data.dart';

part 'search_model.g.dart';

class SearchModel {
  late int total;
  late int totalHits;
  late List<Hits> hits;

  SearchModel(this.hits, this.total, this.totalHits);
  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
