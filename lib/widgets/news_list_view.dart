import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/services/news_services.dart';

import '../model/article_model.dart';
import 'news_title.dart';


class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 5,
                (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            }));
  }
}