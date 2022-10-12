import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviedb/pages/CategoryPage.dart';
import 'package:moviedb/pages/FavoritePage.dart';
import 'package:moviedb/pages/HomePage.dart';
import 'package:moviedb/pages/MoviePage.dart';
import 'package:moviedb/pages/PersonPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //untuk menyembunyikan bilah status dan tombol di bawah
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => HomePage(),
        "categoryPage": (context) => CategoryPage(),
        "moviePage": (context) => MoviePage(),
        "favoritePage": (context) => FavoritePage(),
        "personPage": (context) => PersonPage(),
      },
    );
  }
}
