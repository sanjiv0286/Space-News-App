import 'package:app/controllers/articles_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'artical_card.dart';

// Favorites Page
class FavoritesPage extends StatelessWidget {
  final ArticleController articleController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: Obx(() {
        if (articleController.favorites.isEmpty) {
          return Center(child: Text('No favorites added'));
        } else {
          return ListView.builder(
            itemCount: articleController.favorites.length,
            itemBuilder: (context, index) {
              var article = articleController.favorites[index];
              return ArticleCard(article: article);
            },
          );
        }
      }),
    );
  }
}
