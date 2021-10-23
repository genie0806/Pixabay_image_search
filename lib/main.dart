import 'package:flutter/material.dart';
import 'package:image_search/ui/search_page.dart';
import 'package:image_search/view_model.dart/pixabay_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ImageSearch());
}

class ImageSearch extends StatelessWidget {
  const ImageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Image Search',
        home: ChangeNotifierProvider(
          create: (_) => PixabayApiViewModel(),
          child: const SearchPage(),
        ));
  }
}
