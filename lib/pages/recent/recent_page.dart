import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  static const route = "/recent";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recently played"),
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
            Text("Share"),
          ],
        ),
      ),
    );
  }
}