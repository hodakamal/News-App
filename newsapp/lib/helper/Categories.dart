// ignore_for_file: file_names

import 'package:newsapp/models/category.dart';

List<CategorieModel> getCategories(){

  List<CategorieModel> myCategories = <CategorieModel>[];
  CategorieModel categorieModel;

  //1
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Business";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1489410342162-b4b300a0bb15?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //2
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Entertainment";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1496381273223-e4ad4e99f5b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //3
  categorieModel = CategorieModel();
  categorieModel.categorieName = "General";
  categorieModel.imageUrl = "https://plus.unsplash.com/premium_photo-1663054265630-baeae23397cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //4
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Health";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Science";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Sports";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1461896836934-ffe607ba8211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = CategorieModel();
  categorieModel.categorieName = "Technology";
  categorieModel.imageUrl = "https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80";
  myCategories.add(categorieModel);

  return myCategories;

}