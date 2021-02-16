import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jsonapi/features.dart/news.dart/model.dart';

class NewsController {
  NewsModel _newsModel = NewsModel();
  Dio _dio = Dio();

  //function speak api
  Future<NewsModel> getNews() async {
    var response =
        await _dio.get('https://association.rowadtqnee.sa/api/list/categories');
    var data = json.decode(response.toString());
    _newsModel = NewsModel.fromJson(data);
    return _newsModel;

//want trd part libraryv
  }
}
