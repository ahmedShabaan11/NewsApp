import 'package:flutter/material.dart';
import 'package:newsapp/views/category%20view.dart';

import '../components/components_class.dart';

class widgetModelListView extends StatelessWidget {
  const widgetModelListView({super.key, required this.components,});

  final category_model components;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return  CategoryView(category: components.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(components.image),
              )),
          width: 200,
          height: 100,
          child: Center(
            child: Text(
              components.categoryName,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
