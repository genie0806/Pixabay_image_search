import 'package:flutter/material.dart';
import 'package:image_search/model/api_model.dart';
import 'package:image_search/model/search_model.dart';
import 'package:image_search/ui/grid_view.ui.dart';
import 'package:image_search/ui/search_bar_ui.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController Textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Search Service'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
            child: Row(
              children: [
                Searchbar(),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset('assets/images/search.png')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
