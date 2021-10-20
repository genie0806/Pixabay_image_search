import 'dart:async';

import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';

class PixabayViewModel {
  final imageApi = PixaBayApi();
  final streamController = StreamController<SearchModel>();

  Stream<SearchModel> get imageApiStream => streamController.stream;

  void fetchImage(String searchWord) {
    imageApi.fetchSearchData(searchWord).then((searchResult) {
      streamController.add(searchResult);
    });
  }
}
