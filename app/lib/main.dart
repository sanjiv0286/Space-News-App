import 'package:device_preview/device_preview.dart';
import 'package:app/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(SpaceNewsApp());
// }

void main() async {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => SpaceNewsApp(),
    ),
  );
}

class ThemeController extends GetxController {
  var isDarkMode = true.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }

  ThemeData get themeData {
    return isDarkMode.value
        ? ThemeData.dark().copyWith(
            primaryColor: Colors.deepPurple,
            hintColor: Colors.blueAccent,
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple,
              iconTheme: IconThemeData(color: Colors.white),
            ),
            textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              bodyMedium: TextStyle(
                  fontFamily: 'Roboto', fontSize: 14, color: Colors.white70),
            ),
            cardColor: Colors.grey[900],
          )
        : ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            hintColor: Colors.blueAccent,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              bodyMedium: TextStyle(
                  fontFamily: 'Roboto', fontSize: 14, color: Colors.black54),
            ),
            cardColor: Colors.grey[100],
          );
  }
}

// *Main App
// class SpaceNewsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Colors.deepPurple,
//         // accentColor: Colors.tealAccent,
//       ),
//       home: HomePage(),
//     );
//   }
// }
// **********************
// class SpaceNewsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark().copyWith(
//         primaryColor: Colors.deepPurple,
//         hintColor: Colors.blueAccent,
//         scaffoldBackgroundColor: Colors.black,
//         appBarTheme: AppBarTheme(
//           backgroundColor: Colors.deepPurple,
//           iconTheme: IconThemeData(color: Colors.white),
//         ),
//         textTheme: TextTheme(
//           titleLarge: TextStyle(
//               fontFamily: 'Orbitron',
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.white),
//           bodyMedium: TextStyle(
//               fontFamily: 'Roboto', fontSize: 14, color: Colors.white70),
//         ),
//         cardColor: Colors.grey[900],
//       ),
//       home: HomePage(),
//     );
//   }
// }

class SpaceNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.themeData,
        home: HomePage(),
      );
    });
  }
}




// **********************************************************************************************************************************************************************

// class SpaceBackground extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (bounds) => RadialGradient(
//         center: Alignment.center,
//         radius: 1.0,
//         colors: [Colors.blueGrey, Colors.black],
//         stops: [0.4, 1.0],
//       ).createShader(bounds),
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black, Colors.deepPurple],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StarField extends StatefulWidget {
//   @override
//   _StarFieldState createState() => _StarFieldState();
// }

// class _StarFieldState extends State<StarField>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 10),
//       vsync: this,
//       lowerBound: 0.0,
//       upperBound: 1.0,
//     )..repeat();
//     _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return CustomPaint(
//           painter: StarFieldPainter(_animation.value),
//         );
//       },
//     );
//   }
// }

// class StarFieldPainter extends CustomPainter {
//   final double progress;
//   StarFieldPainter(this.progress);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()..color = Colors.white;
//     final random = Random();

//     for (int i = 0; i < 100; i++) {
//       final x = random.nextDouble() * size.width;
//       final y = random.nextDouble() * size.height;
//       final radius = random.nextDouble() * 2.0;
//       canvas.drawCircle(Offset(x, y), radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }



