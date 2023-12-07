// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/models/widgetModel.dart';

import '../models/NewsListViewBuilder.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: widgetModel(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(category: "general",),
          ],
        ),
      ),
    );
  }
}
