import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';

class CardViewItem extends StatelessWidget {
  final Hits hits;
  final itemCount;

  const CardViewItem({Key key, this.hits, this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Image.network(
            hits.previewURL,
            fit: BoxFit.fill,
            width: 150,
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/like.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(hits.likes.toString()),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/comment.png",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(hits.comments.toString()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/bookmark.png",
                        width: 20,
                        height: 20,
                      ),
                      Expanded(
                        child: Text(
                          hits.tags,
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
