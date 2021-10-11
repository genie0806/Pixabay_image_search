import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';

class DetailPage extends StatelessWidget {
  final Hits detailData;

  const DetailPage({Key key, this.detailData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detailData.tags),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              child: Image.network(detailData.webformatURL),
              width: 450,
              height: 450,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'UserName : ' + detailData.user,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'View : ' + detailData.views.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'Likes : ' + detailData.likes.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'DownLoads : ' + detailData.downloads.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'commnets : ' + detailData.comments.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding paddingText(String contentText) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 175, 0),
      child: Text(
        contentText,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
