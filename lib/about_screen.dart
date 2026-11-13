import 'package:flutter/material.dart';
import 'app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const List<Map<String, dynamic>> items = [
    {'icon': Icons.animation, 'name': 'Animation'},
    {'icon': Icons.navigation, 'name': 'Navigation'},
    {'icon': Icons.list, 'name': 'ListView'},
    {'icon': Icons.grid_view, 'name': 'GridView'},
    {'icon': Icons.code, 'name': 'Flutter'},
    {'icon': Icons.school, 'name': 'University'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const AppDrawer(),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: items.map((item) {
          return Card(
            color: Colors.teal.shade50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item['icon'] as IconData,
                  size: 50,
                  color: Colors.teal,
                ),
                const SizedBox(height: 10),
                Text(
                  item['name'] as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}