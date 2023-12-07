import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newsapp/models/articles_model.dart';

class newStile extends StatelessWidget {
  const newStile({super.key, required this.articleModel});
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
          Image.network(
            articleModel.image ?? "https://images.unsplash.com/photo-1566275529824-cca6d008f3da?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvdG98ZW58MHx8MHx8fDA%3D",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          )
          ,
        ),
        const SizedBox(
          height: 12,
        ),
      Text(
          articleModel.title?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    );
  }
}
