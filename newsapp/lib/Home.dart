// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/helper/Categories.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/article.dart';
import 'package:newsapp/models/category.dart';
import 'package:newsapp/shared%20widgets/blogTile.dart';
import 'package:newsapp/shared%20widgets/categoryTile.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategorieModel> categories = <CategorieModel>[];
  List<Article> article = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  void getNews() async {
    News news = News();
    await news.getnews();
    article = news.newss;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'New ',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text('News',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20))
            ],
          ),
        ),
        body: _loading? const Center(
          child: CircularProgressIndicator(color: Colors.blueAccent,),
        )
        :SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                //categories
                // ignore: sized_box_for_whitespace
                Container(
                  height: 70,
                  child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Categorytile(
                        CatUrl: categories[index].imageUrl,
                        CatName: categories[index].categorieName,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Latest News',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                //articles
                // ignore: avoid_unnecessary_containers
                Container(
                  child: ListView.builder(
                      itemCount: article.length,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      // scrollDirection: Axis.vertical,

                      itemBuilder: (context, index) {
                        return Blogtile(
                            ImageUrl: article[index].imageUrl,
                            Title: article[index].title,
                            Desc: article[index].description,
                            Url: article[index].articleUrl);
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
