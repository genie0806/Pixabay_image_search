import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';

class CardViewItem extends StatelessWidget {
  final Hits hit;
  final void Function() onTap;

  const CardViewItem({Key key, this.hit, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            child: Card(
              child: Image.network(
                hit.previewURL,
                fit: BoxFit.fill,
                width: 150,
                height: 150,
              ),
            ),
            onTap: onTap),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Image.asset(
                        "assets/images/like.png",
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(hit.likes.toString()),
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
                    Text(hit.comments.toString()),
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
                          hit.tags,
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
