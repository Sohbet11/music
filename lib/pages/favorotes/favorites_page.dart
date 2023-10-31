import 'package:flutter/material.dart';
import 'package:lesson_4_homework_call/pages/songs/songs_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  static const route = "/favorites";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.grey,
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No music"),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed((context), SongsPage.route);
        },
        child: const Icon(Icons.music_note_outlined),
      ),
      

      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text("Sort"),

            SizedBox(height: 10,),
            Text("Add songs"),
          ],
        ),
      ),
    );
  }
}