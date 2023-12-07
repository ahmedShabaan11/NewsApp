import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';

import '../services/news_service.dart';
import 'NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var Future;

  @override
  void initState() {
    Future = NewsService(Dio()).getTopHeadLines(category: widget.category);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: Future,
      builder: (context, snapshot) {
        snapshot.data;
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("opps there was an erorr try later"),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
