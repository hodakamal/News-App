// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/article.dart';
import 'package:newsapp/shared%20widgets/blogTile.dart';

// ignore: must_be_immutable
class CategoriesView extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String Category;
  // ignore: non_constant_identifier_names
  CategoriesView({super.key, required this.Category});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<Article> article = <Article>[];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getCategory();
  }

  getCategory() async {
    SpacifiedCategory newss = SpacifiedCategory();
    await newss.getnews(widget.Category);
    article = newss.news;
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
          //mainAxisAlignment: MainAxisAlignment.center,
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
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
            )
          : SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      //height: MediaQuery.of(context).size.height,
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
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
