import 'package:dio/dio.dart';
import 'package:newsapp/Models/Article_Model.dart';

class Newservices {
  final Dio dio;

  Newservices(this.dio);

  Future<List<ArticleModel>> GetTopHeadLines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/latest?country=eg&apikey=pub_51344b54c7ca65cc685120a8917a14aacc2cb&category=$category');

      // ignore: non_constant_identifier_names
      Map<String, dynamic> JsonData = response.data;

      List<dynamic> articles = JsonData['results'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } on Exception {
      return [];
    }
  }
}
