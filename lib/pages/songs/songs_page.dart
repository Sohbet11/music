import 'package:flutter/material.dart';
import 'package:lesson_4_homework_call/pages/favorotes/favorites_page.dart';

class SongsPage extends StatelessWidget {
  const SongsPage({super.key});

  static const route = "/songs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All songs"),
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
          Navigator.pushReplacementNamed((context), FavoritesPage.route);
        },
        child: const Icon(Icons.favorite_border_outlined),
      ),

      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text("Scan local songs"),

            SizedBox(height: 10,),
            Text("Extract background music"),
          ],
        ),
      ),
    );
  }
}