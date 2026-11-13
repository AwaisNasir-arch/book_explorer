import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'list_screen.dart';
import 'about_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.school, color: Colors.white, size: 40),
                SizedBox(height: 8),
                Text(
                  'Book Explorer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => _goTo(context, const HomeScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('List Screen'),
            onTap: () => _goTo(context, const ListScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Screen'),
            onTap: () => _goTo(context, const AboutScreen()),
          ),
        ],
      ),
    );
  }

  void _goTo(BuildContext context, Widget screen) {
    final navigator = Navigator.of(context);
    navigator.pop();
    navigator.pushReplacement(
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}