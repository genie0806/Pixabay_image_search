import 'package:flutter/material.dart';
import 'package:image_search/model/saerch_data.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Hits detailData;

  const DetailPage({Key? key, required this.detailData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detailData.tags),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
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
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'View : ' + detailData.views.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'Likes : ' + detailData.likes.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'DownLoads : ' + detailData.downloads.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'commnets : ' + detailData.comments.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  onPressed: () {
                    launch(detailData.pageURL);
                  },
                  child: const Text(
                    'Go to Website Image',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void lauchUrl(String url) async {
    await canLaunch(detailData.pageURL)
        ? await launch(detailData.pageURL)
        : throw 'could not launch${detailData.pageURL}';
  }
}
