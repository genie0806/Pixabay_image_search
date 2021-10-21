//viewmodel을 만들어주자
//->이걸 inhertedWidget으로

import 'dart:async';

import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';

class PixabayViewModel {
  final _pixabayApi = PixaBayApi();
  final _streamController = StreamController<SearchModel>();

  Stream<SearchModel> get apiStream => _streamController.stream;

  void fetch(String keyword) {
    _pixabayApi.fetchSearchData(keyword).then((result) {
      _streamController.add(result);
    });
  }
}
