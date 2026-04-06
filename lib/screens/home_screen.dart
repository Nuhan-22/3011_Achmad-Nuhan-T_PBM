import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner
            Container(
              height: 180,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/400/200"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Title
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Popular Destinations",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Card sederhana
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  card("Bali Beach"),
                  card("Raja Ampat"),
                  card("Gunung Bromo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.location_on),
        title: Text(title),
        subtitle: const Text("Indonesia"),
      ),
    );
  }
}