import 'package:flutter/material.dart';
import 'package:image_search/widget/card_view.ui.dart';
import 'package:image_search/widget/detail_page.dart';
import 'package:image_search/widget/search_bar_ui.dart';
import 'package:image_search/view_model.dart/pixabay_view_model.dart';
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
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<PixabayApiViewModel>().fetschResult('iphone');
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PixabayApiViewModel>(context);
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
                      setState(() {
                        viewModel.fetschResult(_searchController.text);
                      });
                    },
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/images/search.png'))),
              ],
            ),
          ),
          imageResultView(viewModel, context)
        ],
      ),
    );
  }

  Widget imageResultView(PixabayApiViewModel viewModel, BuildContext context) {
    if (viewModel.state.searchModel != null) {
      return GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 0.85 / 1,
          crossAxisCount: 2,
          shrinkWrap: true,
          children: viewModel.state.searchModel!.hits
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
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
