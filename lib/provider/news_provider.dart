import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/model/news_model.dart';
import 'package:news/api/news_api.dart';

final newsProvider = FutureProvider<List<NewsModel>>((ref) async {
  return ref.watch(newsApiServiceProvider).fetchNews();
});
