import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:image_search/model/search.model.dart';

class SearchApi {
  static const baseUrl = 'https://pixabay.com/api/';
  Future<SearchModel> fetchSearchData(String searchWord) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=17828481-17c071c7f8eadf406822fada3&q=$searchWord&image_type=photo'));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
      SearchModel searchdata = SearchModel.fromJson(jsonResponse);
      return searchdata;
    }
    throw Exception('statusCode is not 200');
  }
}// MVVM 패턴에서 모델,

