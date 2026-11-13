import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'detail_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  static const List<String> books = [
    'Atomic Habits',
    'Think and Grow Rich',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text(
                '${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(books[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(bookName: books[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}