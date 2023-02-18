// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/pagesView/AtricaleView.dart';

// ignore: must_be_immutable
class Blogtile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String ImageUrl, Title, Desc, Url;
  Blogtile(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.ImageUrl,
      // ignore: non_constant_identifier_names
      required this.Title,
      // ignore: non_constant_identifier_names
      required this.Desc,
      // ignore: non_constant_identifier_names
      required this.Url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => articleView(articalUrl: Url)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 5, offset: Offset(6, 8))
            ]),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  ImageUrl,
                  //fit: BoxFit.fill,
                )),
            Container(
                margin: const EdgeInsets.all(6),
                child: Text(
                  Title,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                )),
            Container(
                margin: const EdgeInsets.only(bottom: 6, left: 6, right: 6),
                child: Text(
                  Desc,
                  style: const TextStyle(fontSize: 13, color: Colors.black45),
                ))
          ],
        ),
      ),
    );
  }
}