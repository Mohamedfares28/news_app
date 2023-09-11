import 'package:flutter/material.dart';
import 'package:news_application/views/category_view.dart';

import '../model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
        ),
        child: Container(
          width: 160,
          height: 85,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image),
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
