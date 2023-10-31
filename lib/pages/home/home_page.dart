import 'package:flutter/material.dart';
import 'package:lesson_4_homework_call/pages/favorotes/favorites_page.dart';
import 'package:lesson_4_homework_call/pages/playlists/playlists_page.dart';
import 'package:lesson_4_homework_call/pages/recent/recent_page.dart';
import 'package:lesson_4_homework_call/pages/songs/songs_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library"),
        backgroundColor: Colors.grey,
  
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MUSIC"),
            Text("Your moment, your music"),
          ],
        )
      ),
      
      floatingActionButton: Column(

        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, SongsPage.route);
          },
          child: const Icon(Icons.music_note_outlined),
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, PlaylistsPage.route);
          },
          child: const Icon(Icons.playlist_add_check_circle_outlined),
          ),

          const SizedBox(height: 10),
          
          FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, FavoritesPage.route);
          },
          child: const Icon(Icons.favorite_border_outlined),
          ),

          const SizedBox(height: 10),
          
          FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, RecentPage.route);
          },
          child: const Icon(Icons.watch_later_outlined),
          ),
        ],
      ),
      
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text("Settings"),
          ],
        ),
      ),
    );

  }
}