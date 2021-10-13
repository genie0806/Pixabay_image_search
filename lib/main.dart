import 'package:flutter/material.dart';
import 'package:image_search/page/search_page.dart';

void main() {
  runApp(const ImageSearch());
}

class ImageSearch extends StatelessWidget {
  const ImageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image Search',
      home: SearchPage(),
    );
  }
}
