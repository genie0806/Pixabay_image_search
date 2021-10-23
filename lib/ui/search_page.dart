import 'package:flutter/material.dart';
import 'package:image_search/view_model.dart/pixabay_view_model.dart';
import 'package:image_search/widget/card_view.ui.dart';
import 'package:image_search/widget/detail_page.dart';
import 'package:image_search/widget/search_bar_ui.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();
  final _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PixabayApiViewModel>();
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
          Consumer<PixabayApiViewModel>(builder: (_, viewModel, child) {
            return resultView(viewModel, context);
          })
        ],
      ),
    );
  }

  GridView resultView(PixabayApiViewModel viewModel, BuildContext context) {
    return GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 0.85 / 1,
        crossAxisCount: 2,
        shrinkWrap: true,
        children: viewModel.apiResult!.hits
            .where((e) =>
                e.tags.toLowerCase().contains(_query.trim().toLowerCase()))
            .map((e) => CardViewItem(
                  hit: e,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(detailData: e),
                      ),
                    );
                  },
                ))
            .toList());
  }
}
