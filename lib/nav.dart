// nav.dart
import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding( // Add this
          padding: EdgeInsets.symmetric(horizontal: 40), // Adjust the value as needed
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // This will separate the two Row widgets
            children: <Widget>[
              Row( // This Row contains your text
                children: [
                  Text(
                    "Classic Photo Gallery",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "myFont1",
                    ),
                  ),
                ],
              ),
              Row( // This Row contains your buttons
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}





class MyNavBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Classic Photo Gallery",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "myFont1",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(), // Added to push the bottom navigation bar to the bottom
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
    );
  }
}
