class ArticleModel {
final  String? image;
 final String? title;
 final String? subtitle;
  final Source? source;

  ArticleModel(
      {required this.source,
      required this.image,
      required this.subtitle,
      required this.title});

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      source: Source(id: json["source"]["id"], name: json["source"]["name"]),
      image: json["urlToImage"],
      subtitle: json["description"],
      title: json["title"],
    );
  }
}

class Source {
  final String? id;
  final String? name;

  Source({required this.id, required this.name});
}
