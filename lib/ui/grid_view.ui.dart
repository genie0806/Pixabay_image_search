import 'package:flutter/material.dart';
import 'package:image_search/model/api_model.dart';

class GridViewItem extends StatelessWidget {
  final int likes;
  final String tags;
  final int comments;
  final String previewURL;
  const GridViewItem(
      {Key key, this.likes, this.tags, this.comments, this.previewURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                Container(
                  child: Image.network(''),
                )
              ],
            ),
          );
        });
  }
}
