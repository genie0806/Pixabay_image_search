import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:image_search/model/api_model.dart';

const searchImageUrl =
    'https://pixabay.com/api/?key=17828481-17c071c7f8eadf406822fada3&q=iphone&image_type=photo';

Future<List<SearchModel>> fetchSearchData() async {
  final response = await http.get(searchImageUrl);
  Iterable jsonResponse = convert.jsonDecode(response.body);
  List<SearchModel> searchData =
      jsonResponse.map((e) => SearchModel.fromJson(e)).toList();

  return searchData;
}
