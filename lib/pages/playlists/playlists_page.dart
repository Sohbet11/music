import 'package:flutter/material.dart';

class PlaylistsPage extends StatelessWidget {
  const PlaylistsPage({super.key});

  static const route = "/playlists";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Playlists"),
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

      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text("Create new"),
          ],
        ),
      ),
    );
  }
}