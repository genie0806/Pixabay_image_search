import 'package:flutter/cupertino.dart';
import 'package:image_search/model/search_api.dart';
import 'package:image_search/view/photo_state.dart';

class PixabayApiViewModel extends ChangeNotifier {
  final _api = SearchApi();
  PhotoState _state = PhotoState();
  PhotoState get state => _state;

  Future<void> fetschResult(String searchWord) async {
    final result = await _api.fetchSearchData(searchWord);
    _state = _state.copyWith(searchModel: result);

    notifyListeners();
  }
}
