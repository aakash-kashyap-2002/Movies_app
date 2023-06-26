import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:movies_app/pages/categorypage.dart';
import 'package:movies_app/pages/homepage.dart';
import 'package:movies_app/pages/moviepage.dart';
import 'package:movies_app/pages/profilepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F111D),
        textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
          titleSmall: GoogleFonts.ubuntuCondensed(
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.ubuntuCondensed(
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.ubuntuCondensed(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomePage(),
      routes: {
        'homePage': (context) => const HomePage(),
        'categoryPage': (context) => const Categorypage(),
        'moviePage': (context) => const MoviePage(),
        'profilePage': (context) => const ProfilePage(),
      },
    );
  }
}
