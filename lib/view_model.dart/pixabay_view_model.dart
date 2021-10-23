import 'package:flutter/material.dart';
import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';

class PixabayApiViewModel with ChangeNotifier {
  final _api = SearchApi();
  SearchModel? _apiResult;
  SearchModel? get apiResult => _apiResult;

  void fetchResult(String searchWord) {
    _api.fetchSearchData(searchWord).then((result) {
      _apiResult = result;
    });
    notifyListeners();
  }
}
