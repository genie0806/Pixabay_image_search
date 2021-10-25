import 'package:flutter/cupertino.dart';
import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';

class PixabayApiViewModel extends ChangeNotifier {
  final _api = SearchApi();
  SearchModel? _searchModel;
  SearchModel? get result => _searchModel;

  void fetschResult(String searchWord) {
    _api.fetchSearchData(searchWord).then((result) {
      _searchModel = result;
      notifyListeners();
    });
  }
}
