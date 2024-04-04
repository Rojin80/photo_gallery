import 'package:flutter/material.dart';
import 'MyGridView.dart';
import 'nav.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0), // Set the height of the navigation bar
            child: MyNavBar(), // Use the MyNavBar widget
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: MyGridView(), // Your GridView
          ),
          BottomNavigationBar( // Bottom navigation bar
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: Colors.blue, // Customize as needed
            onTap: (int index) {
              // Handle navigation based on the tapped index
            },
          ),
        ],
      ),
    );
  }
}
