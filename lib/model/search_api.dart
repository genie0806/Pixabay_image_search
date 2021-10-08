import 'package:image_search/model/saerch_data.dart';

class SearchModel {
  int total;
  int totalHits;
  List<Hits> hits;

  SearchModel({this.total, this.totalHits, this.hits});

  SearchModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = List<Hits>();
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
  }
}
