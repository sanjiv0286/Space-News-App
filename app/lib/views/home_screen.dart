// *Home Page
// class HomePage extends StatelessWidget {
//   final ArticleController articleController = Get.put(ArticleController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Space News')),
//       body: Obx(() {
//         if (articleController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else {
//           return ListView.builder(
//             itemCount: articleController.articles.length,
//             itemBuilder: (context, index) {
//               var article = articleController.articles[index];
//               return ArticleCard(article: article);
//             },
//           );
//         }
//       }),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.article), label: "Articles"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: "Favorites"),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Get.to(HomePage());
//           } else if (index == 1) {
//             Get.to(FavoritesPage());
//           }
//         },
//       ),
//     );
//   }
// }
// ************************
// class HomePage extends StatelessWidget {
//   final ArticleController articleController = Get.put(ArticleController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Space News')),
//       body: Obx(() {
//         if (articleController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         }
//         // else if (articleController.errorMessage.isNotEmpty) {
//         //   return Center(child: Text(articleController.errorMessage.value));
//         // }
//         else {
//           return ListView.builder(
//             itemCount: articleController.articles.length,
//             itemBuilder: (context, index) {
//               var article = articleController.articles[index];
//               return ArticleCard(article: article);
//             },
//           );
//         }
//       }),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.article), label: "Articles"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: "Favorites"),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Get.to(HomePage());
//           } else if (index == 1) {
//             Get.to(FavoritesPage());
//           }
//         },
//       ),
//     );
//   }
// }
// ********************
// class HomePage extends StatelessWidget {
//   final ArticleController articleController = Get.put(ArticleController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Space News')),
//       body: Obx(() {
//         if (articleController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else {
//           return ListView.builder(
//             itemCount: articleController.articles.length,
//             itemBuilder: (context, index) {
//               var article = articleController.articles[index];
//               return ArticleCard(article: article);
//             },
//           );
//         }
//       }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Action for FAB
//         },
//         child: Icon(Icons.space_bar),
//         backgroundColor: Colors.deepPurple,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.public, color: Colors.blueAccent),
//             label: "Articles",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star, color: Colors.yellowAccent),
//             label: "Favorites",
//           ),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Get.to(HomePage());
//           } else if (index == 1) {
//             Get.to(FavoritesPage());
//           }
//         },
//       ),
//     );
//   }
// }
// ****************************
// class HomePage extends StatelessWidget {
//   final ArticleController articleController = Get.put(ArticleController());
//   final ThemeController themeController = Get.find();
//   final TextEditingController searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Space News'),
//         actions: [
//           IconButton(
//             icon: Icon(themeController.isDarkMode.value
//                 ? Icons.light_mode
//                 : Icons.dark_mode),
//             onPressed: () {
//               themeController.toggleTheme();
//             },
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(50.0),
//           child: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               onChanged: (value) {
//                 articleController.searchArticles(value);
//               },
//               decoration: InputDecoration(
//                 hintText: 'Search...',
//                 fillColor: Colors.black87,
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25.0),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Obx(() {
//         if (articleController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else if (articleController.errorMessage.isNotEmpty) {
//           return Center(child: Text(articleController.errorMessage.value));
//         } else {
//           return ListView.builder(
//             itemCount: articleController.filteredArticles.length,
//             itemBuilder: (context, index) {
//               var article = articleController.filteredArticles[index];
//               return ArticleCard(article: article);
//             },
//           );
//         }
//       }),
// floatingActionButton: FloatingActionButton(
//   onPressed: () {
//     // Action for FAB
//   },
//   child: Icon(Icons.space_bar),
//   backgroundColor: Colors.deepPurple,
// ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.public, color: Colors.blueAccent),
//             label: "Articles",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star, color: Colors.yellowAccent),
//             label: "Favorites",
//           ),
//         ],
//         onTap: (index) {
//           if (index == 0) {
//             Get.to(HomePage());
//           } else if (index == 1) {
//             Get.to(FavoritesPage());
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/articles_controller.dart';
import '../main.dart';
import 'artical_card.dart';
import 'favorites_screen.dart';

class HomePage extends StatelessWidget {
  final ArticleController articleController = Get.put(ArticleController());
  final ThemeController themeController = Get.find();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space News'),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value
                ? Icons.light_mode
                : Icons.dark_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                articleController.searchArticles(value);
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                fillColor: Colors.black87,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (articleController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (articleController.errorMessage.isNotEmpty) {
          return Center(child: Text(articleController.errorMessage.value));
        } else {
          return ListView.builder(
            itemCount: articleController.filteredArticles.length,
            itemBuilder: (context, index) {
              var article = articleController.filteredArticles[index];
              return ArticleCard(article: article);
            },
          );
        }
      }),
      floatingActionButton: AnimatedRotation(
        turns: 1 / 4,
        duration: Duration(seconds: 2),
        child: FloatingActionButton(
          onPressed: () {
            // Action for FAB
          },
          child: Icon(Icons.space_bar),
          backgroundColor: Colors.deepPurple,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.public, color: Colors.blueAccent),
            label: "Articles",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.yellowAccent),
            label: "Favorites",
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.to(HomePage());
          } else if (index == 1) {
            Get.to(FavoritesPage());
          }
        },
      ),
    );
  }
}
