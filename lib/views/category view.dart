import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/NewsListView.dart';
import 'package:newsapp/models/NewsListViewBuilder.dart';

import '../services/news_service.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:CustomScrollView(slivers: [
    NewsListViewBuilder(category: category,),
      ],),
    );
  }
}
