import 'package:flutter/cupertino.dart';
import 'package:newsapp/models/widgetModel_list_view.dart';

import '../components/components_class.dart';

class widgetModel extends StatelessWidget {
  const widgetModel({super.key});

  final List<category_model> components = const [
    category_model(
        categoryName: "Business",
        image:
            "assets/young-happy-business-woman-working-260nw-2189325893.jpg"),
    category_model(
        categoryName: "entertainment", image: "assets/entertaiment.avif"),
    category_model(categoryName: "Health", image: "assets/health.avif"),
    category_model(categoryName: "Science", image: "assets/science.avif"),
    category_model(
        categoryName: "Sports",
        image: "assets/istockphoto-530433292-612x612.jpg"),
    category_model(categoryName: "Technology", image: "assets/technology.jpeg"),
    category_model(
        categoryName: "General",
        image: "assets/istockphoto-1407267477-612x612.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: components.length,
            itemBuilder: (context, index) {
              return widgetModelListView(
                components: components[index],
              );
            }));
  }
}
