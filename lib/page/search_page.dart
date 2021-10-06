import 'package:flutter/material.dart';
import 'package:image_search/model/api_model.dart';
import 'package:image_search/model/search_model.dart';
import 'package:image_search/ui/grid_view.ui.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Search Service'),
      ),
      body: FutureBuilder<List<SearchModel>>(
          future: fetchSearchData(),
          initialData: [],
          builder: (BuildContext context,
              AsyncSnapshot<List<SearchModel>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Image.asset('assets/images/progress.gif'),
              );
            }
            if (snapshot.hasError) {
              return Text('에러가 발생했습니다.');
            }
            if (!snapshot.hasData) {
              return Text('데어터가 없습니다.');
            }
            List<SearchModel> searchData = snapshot.data;
            return ListView(
                children: searchData
                    .map((e) => GridViewItem(
                          comments: e.comments,
                          likes: e.likes,
                          previewURL: e.pageURL,
                          tags: e.tags,
                        ))
                    .toList());
          }),
    );
  }
}
