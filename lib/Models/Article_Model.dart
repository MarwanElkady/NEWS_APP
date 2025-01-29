class ArticleModel {
  final String? Image;
  final dynamic title;
  final String? Subtitle;
  final String? url;

  ArticleModel(
      {required this.Image,
      required this.title,
      required this.Subtitle,
      required this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        Image: json['image_url'],
        title: json['title'],
        Subtitle: json['description'],
        url: json['link']);
  }
}
