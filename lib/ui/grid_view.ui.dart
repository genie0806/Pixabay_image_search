import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';

class GridViewItem extends StatelessWidget {
  final Hits hits;

  const GridViewItem({Key key, this.hits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: [
        Container(
          child: Image.network(
            hits.previewURL,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
        )
      ],
    );
  }
}
