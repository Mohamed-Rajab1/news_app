import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/business.avif'),
    CategoryModel(
      categoryName: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModel(categoryName: 'General', image: 'assets/general.avif'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
