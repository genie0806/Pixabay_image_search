class Hits {
  late int id;
  late String pageURL;
  late String type;
  late String tags;
  late String previewURL;
  late int previewWidth;
  late int previewHeight;
  late String webformatURL;
  late int webformatWidth;
  late int webformatHeight;
  late String largeImageURL;
  late int imageWidth;
  late int imageHeight;
  late int imageSize;
  late int views;
  late int downloads;
  late int collections;
  late int likes;
  late int comments;
  late int userId;
  late String user;
  late String userImageURL;
  late String result;
  Hits(
      {required this.id,
      required this.pageURL,
      required this.type,
      required this.tags,
      required this.previewURL,
      required this.previewWidth,
      required this.previewHeight,
      required this.webformatURL,
      required this.webformatWidth,
      required this.webformatHeight,
      required this.largeImageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.imageSize,
      required this.views,
      required this.downloads,
      required this.collections,
      required this.likes,
      required this.comments,
      required this.userId,
      required this.user,
      required this.userImageURL});

  Hits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewURL = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatURL = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageURL = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    collections = json['collections'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageURL = json['userImageURL'];
  }
}
