
// Article Details Page
// class ArticleDetailsPage extends StatelessWidget {
//   final dynamic article;

//   ArticleDetailsPage({required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(article['title'])),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (article['image_url'] != null)
//               Image.network(article['image_url']),
//             SizedBox(height: 16),
//             Text(
//               article['title'],
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             Text(article['summary']),
//             SizedBox(height: 16),
//             ElevatedButton(
//               // onPressed: () {
//               //   // Open the full article in a web browser
//               //   // Get.to(WebViewScreen(url: article['url']));
//               // },
//               onPressed: () => openUrl(article['url']),

//               child: Text('Read More'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class ArticleDetailsPage extends StatelessWidget {
//   final dynamic article;

//   ArticleDetailsPage({required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(article['title'])),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (article['image_url'] != null)
//               Image.network(article['image_url']),
//             SizedBox(height: 16),
//             Text(
//               article['title'],
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             Text(article['summary']),
//             SizedBox(height: 16),
//             ElevatedButton(
//               // onPressed: () {
//               // Get.to(WebViewScreen(url: article['url']));

//               // },
//               onPressed: () => openUrl(article['url']),

//               child: Text('Read More'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// *******************
// class ArticleDetailsPage extends StatelessWidget {
//   final dynamic article;

//   ArticleDetailsPage({required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(article['title'])),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (article['image_url'] != null)
//               Image.network(article['image_url'],
//                   width: double.infinity, height: 250, fit: BoxFit.cover),
//             SizedBox(height: 16),
//             Text(article['title'],
//                 style: Theme.of(context).textTheme.titleLarge),
//             SizedBox(height: 16),
//             Text(article['summary'],
//                 style: Theme.of(context).textTheme.bodyMedium),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () => openUrl(article['url']),
//               child: Text('Read More'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetailsPage extends StatelessWidget {
  final dynamic article;

  ArticleDetailsPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article['title'])),
      body: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0.0, 1.0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.easeInOut,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article['image_url'] != null)
                Image.network(article['image_url'],
                    width: double.infinity, height: 250, fit: BoxFit.cover),
              SizedBox(height: 16),
              Text(article['title'],
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 16),
              Text(article['summary'],
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => openUrl(article['url']),
                child: Text('Read More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
