import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:image_search/model/api_model.dart';

const searchImageUrl =
    'https://pixabay.com/api/?key=17828481-17c071c7f8eadf406822fada3&q=iphone&image_type=photo';

Future<SearchModel> fetchSearchData(String searchWord) async {
  final response = await http.get(searchImageUrl + '?iphoe = $searchWord');
  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    SearchModel searchData = SearchModel.fromJson(jsonResponse);
    return searchData;
  }
  throw Exception('Response\'s statusCode is not 200');
}
