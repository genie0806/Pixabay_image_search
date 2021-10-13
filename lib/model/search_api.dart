import 'package:image_search/model/saerch_data.dart';

class SearchModel {
  late int total;
  late int totalHits;
  late List<Hits> hits;

  SearchModel(
      {required this.total, required this.totalHits, required this.hits});

  SearchModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
  }
}
