// * Article Card Widget

// class ArticleCard extends StatelessWidget {
//   final dynamic article;
//   final ArticleController articleController = Get.find();

//   ArticleCard({required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8.0),
//       color: Colors.grey[850],
//       child: ListTile(
//         contentPadding: EdgeInsets.all(10.0),
//         leading: article['image_url'] != null
//             ? Image.network(article['image_url'],
//                 width: 100, height: 100, fit: BoxFit.cover)
//             : Icon(Icons.image, color: Colors.grey),
//         title: Text(article['title'],
//             style: Theme.of(context).textTheme.titleLarge),
//         subtitle: Text(article['summary']),
//         trailing: IconButton(
//           icon: Icon(
//             articleController.favorites.contains(article)
//                 ? Icons.favorite
//                 : Icons.favorite_border,
//             color: Colors.redAccent,
//           ),
//           onPressed: () {
//             if (articleController.favorites.contains(article)) {
//               articleController.removeFromFavorites(article);
//             } else {
//               articleController.addToFavorites(article);
//             }
//           },
//         ),
//         onTap: () {
//           Get.to(ArticleDetailsPage(article: article));
//         },
//       ),
//     );
//   }
// }
// ******************
// class ArticleCard extends StatelessWidget {
//   final dynamic article;
//   final ArticleController articleController = Get.find();

//   ArticleCard({required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(10.0),
//         title: Text(article['title']),
//         subtitle: Text(article['summary']),
//         trailing: IconButton(
//           icon: Icon(
//             articleController.favorites.contains(article)
//                 ? Icons.favorite
//                 : Icons.favorite_border,
//             color: Colors.redAccent,
//           ),
//           onPressed: () {
//             if (articleController.favorites.contains(article)) {
//               articleController.removeFromFavorites(article);
//             } else {
//               articleController.addToFavorites(article);
//             }
//           },
//         ),
//         onTap: () {
//           Get.to(ArticleDetailsPage(article: article));
//         },
//       ),
//     );
//   }
// }
// *****************

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/articles_controller.dart';
import 'article_details_screen.dart';

class ArticleCard extends StatelessWidget {
  final dynamic article;
  final ArticleController articleController = Get.find();

  ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: 300),
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(10.0),
          title: Text(article['title']),
          subtitle: Text(article['summary']),
          trailing: IconButton(
            icon: Icon(
              articleController.favorites.contains(article)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.redAccent,
            ),
            onPressed: () {
              if (articleController.favorites.contains(article)) {
                articleController.removeFromFavorites(article);
              } else {
                articleController.addToFavorites(article);
              }
            },
          ),
          onTap: () {
            Get.to(ArticleDetailsPage(article: article));
          },
        ),
      ),
    );
  }
}
