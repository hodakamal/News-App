class Article {
  String title;
  String author;
  String description;
  String imageUrl;
  String publishedAt;
  String content;
  String articleUrl;

  Article(
      {required this.title,
      required this.description,
      required this.author,
      required this.content,
      required this.imageUrl,
      required this.articleUrl,
      required this.publishedAt});
}
