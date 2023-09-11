import 'package:flutter/cupertino.dart';
import '../model/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> Categories = const [
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'general',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'sports',
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, index) {
            return  CategoryCard(
              category: Categories[index],
            );
          }),
    );
  }
}
