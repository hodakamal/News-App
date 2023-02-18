import 'dart:convert';

import 'package:newsapp/models/article.dart';
import 'package:http/http.dart' as http;

class News {
  List<Article> newss = [];
  Future<bool> getnews() async {
    // ignore: non_constant_identifier_names
    String Url =
        'https://newsapi.org/v2/top-headlines?country=us&category=Technology&apiKey=b394a70112534fa8850e70d3eecb2097';
    var response = await http.get(Uri.parse(Url));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == 'ok') {
      jsonData['articles'].forEach((e) {
        if (e["urlToImage"] != null &&
            e["description"] != null &&
            e["url"] != null &&
            e["title"] != null &&
            e["publishedAt"] != null) {
          Article articleModel = Article(
              title: e["title"],
              description: e["description"],
              author: e["author"] ?? 'NotFound',
              content: e["content"] ?? 'NotFound',
              publishedAt: e["publishedAt"],
              imageUrl: e["urlToImage"],
              articleUrl: e["url"]);
          newss.add(articleModel);
        }
      });
      
      return true;
    } else {
      return false;
    }
  }

  //getCategory() {}
}

class SpacifiedCategory {
  List<Article> news = [];
  Future<void> getnews(String category) async {
    // ignore: non_constant_identifier_names
    String Url =
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=b394a70112534fa8850e70d3eecb2097';

    var response = await http.get(Uri.parse(Url));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == 'ok') {
      jsonData['articles'].forEach((e) {
        if (e["urlToImage"] != null &&
            e["description"] != null &&
            e["url"] != null &&
            e["title"] != null &&
            e["publishedAt"] != null) {
          Article articleModel = Article(
              title: e["title"],
              description: e["description"],
              author: e["author"] ?? 'NotFound',
              content: e["content"] ?? 'NotFound',
              publishedAt: e["publishedAt"],
              imageUrl: e["urlToImage"],
              articleUrl: e["url"]);
          news.add(articleModel);
        }
      });
    }
  }
}
