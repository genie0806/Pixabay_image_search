import 'package:flutter/material.dart';

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
                  child: Image.network(
                    previewURL,
                    fit: BoxFit.cover,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets\images\like.png"),
                      Text('{$likes}')
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets\images\bookmark.png"),
                      Text(tags),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets\images\bookmark.png"),
                      Text('{$comments}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
