// *Spaceflight News Service
// class SpaceflightNewsService {
//   final String baseUrl = 'https://api.spaceflightnewsapi.net/v4/articles/';

//   Future<List<dynamic>> fetchArticles(
//       {int limit = 100000, int offset = 0}) async {
//     final response = await http.get(
//       Uri.parse('$baseUrl?limit=$limit&offset=$offset'),
//     );

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       return jsonData['results'];
//     } else {
//       throw Exception('Failed to load articles');
//     }
//   }
// }

// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SpaceflightNewsService {
  final String baseUrl = 'https://api.spaceflightnewsapi.net/v4/articles/';

  Future<List<dynamic>> fetchArticles(
      {int limit = 1000, int offset = 0}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl?limit=$limit&offset=$offset'),
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return jsonData['results'];
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (e) {
      throw Exception('Failed to load articles: $e');
    }
  }
}
