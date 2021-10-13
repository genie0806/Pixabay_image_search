import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';
import 'package:image_search/model/search_model.dart';
import 'package:image_search/ui/card_view.ui.dart';
import 'package:image_search/ui/detail_page.dart';
import 'package:image_search/ui/search_bar_ui.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _apiData = PixaBayApi();
  final _searchController = TextEditingController();
  final _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Search Service'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Row(
              children: [
                Expanded(
                  child: Searchbar(
                      controller: _searchController,
                      onChanged: (query) {
                        setState(() {
                          query = _query;
                        });
                      }),
                ),
                InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/images/search.png'))),
              ],
            ),
          ),
          FutureBuilder<List<Hits>>(
              initialData: const [],
              future: _apiData.fetchSearchData(_searchController.text.isEmpty
                  ? 'iphone'
                  : _searchController.text),
              builder: (context, AsyncSnapshot<List<Hits>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                      child: Image.asset('assets/images/progress.gif'));
                }
                if (snapshot.hasError) {
                  const Text('망했다 에러다');
                }
                final _apiresult = snapshot.data ?? [];
                return GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.85 / 1,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: _apiresult
                        .where((e) => e.tags
                            .toLowerCase()
                            .contains(_query.trim().toLowerCase()))
                        .map((e) => CardViewItem(
                              hit: e,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(detailData: e),
                                  ),
                                );
                              },
                            ))
                        .toList());
              }),
        ],
      ),
    );
  }
}
