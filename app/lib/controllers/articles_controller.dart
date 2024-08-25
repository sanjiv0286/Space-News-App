// *Article Controller with GetX
// class ArticleController extends GetxController {
//   var articles = [].obs;
//   var favorites = <dynamic>[].obs;
//   var isLoading = false.obs;
//   final SpaceflightNewsService newsService = SpaceflightNewsService();

//   @override
//   void onInit() {
//     fetchArticles();
//     super.onInit();
//   }

//   void fetchArticles() async {
//     try {
//       isLoading(true);
//       var fetchedArticles = await newsService.fetchArticles();
//       articles.assignAll(fetchedArticles);
//     } finally {
//       isLoading(false);
//     }
//   }

//   void addToFavorites(article) {
//     favorites.add(article);
//   }

//   void removeFromFavorites(article) {
//     favorites.remove(article);
//   }
// }
// ******************************
// class ArticleController extends GetxController {
//   var articles = <dynamic>[].obs;
//   var favorites = <dynamic>[].obs;
//   var isLoading = false.obs;
//   var errorMessage = ''.obs;
//   final SpaceflightNewsService newsService = SpaceflightNewsService();

//   @override
//   void onInit() {
//     fetchArticles();
//     super.onInit();
//   }

//   void fetchArticles() async {
//     try {
//       isLoading(true);
//       errorMessage('');
//       var fetchedArticles = await newsService.fetchArticles();
//       articles.assignAll(fetchedArticles);
//     } catch (e) {
//       errorMessage('Failed to load articles: $e');
//     } finally {
//       isLoading(false);
//     }
//   }

//   void addToFavorites(dynamic article) {
//     favorites.add(article);
//   }

//   void removeFromFavorites(dynamic article) {
//     favorites.remove(article);
//   }
// }
// ****************************************


import 'package:app/services/api_service.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  var articles = <dynamic>[].obs;
  var filteredArticles = <dynamic>[].obs;
  var favorites = <dynamic>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  final SpaceflightNewsService newsService = SpaceflightNewsService();

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  void fetchArticles() async {
    try {
      isLoading(true);
      errorMessage('');
      var fetchedArticles = await newsService.fetchArticles();
      articles.assignAll(fetchedArticles);
      filteredArticles.assignAll(fetchedArticles);
    } catch (e) {
      errorMessage('Failed to load articles: $e');
    } finally {
      isLoading(false);
    }
  }

  void searchArticles(String query) {
    if (query.isEmpty) {
      filteredArticles.assignAll(articles);
    } else {
      filteredArticles.assignAll(
        articles.where((article) =>
            article['title'].toLowerCase().contains(query.toLowerCase())),
      );
    }
  }

  void addToFavorites(dynamic article) {
    favorites.add(article);
  }

  void removeFromFavorites(dynamic article) {
    favorites.remove(article);
  }
}