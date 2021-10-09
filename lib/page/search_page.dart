import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';
import 'package:image_search/model/search_api.dart';
import 'package:image_search/model/search_model.dart';
import 'package:image_search/ui/grid_view.ui.dart';
import 'package:image_search/ui/search_bar_ui.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _apiData = PixaBayApi();
  final _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Search Service'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Searchbar(
                  Controller: _searchController,
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Image.asset('assets/images/search.png')),
                ),
              ],
            ),
          ),
          FutureBuilder<List<Hits>>(
              future: _apiData.fetchSearchData(_searchController.text.isEmpty
                  ? 'iphone'
                  : _searchController.text),
              builder: (context, AsyncSnapshot<List<Hits>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: Image.asset('assets/images/progress.gif'));
                }
                if (snapshot.hasError) {
                  Text('망했다 이자식아');
                }
                final _apiresult = snapshot.data;
                return Column(
                    children: _apiresult
                        .map((e) => GridViewItem(
                              hits: e,
                            ))
                        .toList());
              }),
        ],
      ),
    );
  }
}
