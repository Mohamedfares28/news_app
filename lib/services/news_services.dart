import 'package:dio/dio.dart';
import 'package:news_application/model/article_model.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=ef7b6b1e48e848809ee9cd935e0f8f39&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);
        articleList.add(articleModel);
      }

      return articleList;
    }catch (e) {
      return[];
    }
  }
}
