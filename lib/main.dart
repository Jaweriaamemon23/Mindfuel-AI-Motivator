import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'splash_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  // ✅ Only load .env if not on Web
  if (!kIsWeb) {
    await dotenv.load(fileName: 'assets/.env');
  }
  runApp(const MindFuelApp());
}

class MindFuelApp extends StatelessWidget {
  const MindFuelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindFuel!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white10,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
