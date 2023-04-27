import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:news/constants/api_constants.dart';
import 'package:news/model/news_model.dart';
import 'dart:developer';

class NewsApiService {
  Future<List<NewsModel>> fetchNews() async {
    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      List data = json.decode(response.body)['articles'];
      return data.map((e) => NewsModel.fromJson(e)).toList();
    } else {
      throw Exception('Faliled to load  Album');
    }
  }
}

// Riverpood
final newsApiServiceProvider = Provider<NewsApiService>((ref) {
  return NewsApiService();
});
