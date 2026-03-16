import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key});

  final List<Article> articles = [

    Article(
      title: "Article Title 1: Flutter is awesome!",
      description:
          "Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.",
      image: "https://picsum.photos/600/300?1",
    ),

    Article(
      title: "Article Title 2: Local Coffee Shop Opens",
      description:
          "The cozy new cafe, 'The Daily Grind', offers local brews and a relaxing atmosphere for customers.",
      image: "https://picsum.photos/600/300?2",
    ),

    Article(
      title: "Article Title 3: New Tech Gadgets",
      description:
          "Discover the newest smartphones, smartwatches, and innovative devices hitting the market.",
      image: "https://picsum.photos/600/300?3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: articles
              .map((article) => ArticleCard(article: article))
              .toList(),
        ),
      ),
    );
  }
}