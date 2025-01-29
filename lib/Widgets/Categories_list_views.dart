// ignore: file_names
import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/Widgets/Category_Card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(image: "assets/business.avif", CategoryName: "Business"),
    CategoryModel(
        image: "assets/entertaiment.avif", CategoryName: "entertainment"),
    CategoryModel(image: "assets/health.avif", CategoryName: "Health"),
    CategoryModel(image: "assets/science.avif", CategoryName: "Science"),
    CategoryModel(image: "assets/sports.avif", CategoryName: "Sports"),
    CategoryModel(image: "assets/technology.jpeg", CategoryName: "Technology"),
    //CategoryModel(image: "assets/general.avif", CategoryName: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
