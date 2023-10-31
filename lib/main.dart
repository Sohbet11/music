import 'package:flutter/material.dart';
import 'package:lesson_4_homework_call/pages/favorotes/favorites_page.dart';
import 'package:lesson_4_homework_call/pages/home/home_page.dart';
import 'package:lesson_4_homework_call/pages/playlists/playlists_page.dart';
import 'package:lesson_4_homework_call/pages/recent/recent_page.dart';
import 'package:lesson_4_homework_call/pages/songs/songs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        SongsPage.route: (context) => const SongsPage(),
        PlaylistsPage.route:(context) => const PlaylistsPage(),
        FavoritesPage.route:(context) => const FavoritesPage(),
        RecentPage.route:(context) => const RecentPage(),
      },
    );
  }
}
