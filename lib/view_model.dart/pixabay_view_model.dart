import 'dart:async';

import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';

class PixabayApiViewModel {
  final _api = PixaBayApi();
  final _streamController = StreamController<SearchModel>();

  Stream<SearchModel> get apiStream => _streamController.stream;

  void fetch(String keyword) {
    _api.fetchSearchData(keyword).then((result) {
      _streamController.add(result);
    });
  }
}
