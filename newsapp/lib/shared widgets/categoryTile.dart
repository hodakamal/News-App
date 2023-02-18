// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/pagesView/CategoricalView.dart';

class Categorytile extends StatelessWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final CatUrl, CatName;
  // ignore: non_constant_identifier_names
  const Categorytile({super.key, this.CatUrl, this.CatName});
  @override
  Widget build(BuildContext context) {
    //make container --> button
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoriesView(
                      Category: CatName,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Stack(
          children: [
            //border for any Widget
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                CatUrl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 120,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                CatName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}