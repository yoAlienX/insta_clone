import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SearchScreen(),));

class SearchScreen extends StatelessWidget {
  final List<String> mediaItems = [
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/london.png',
    'assets/images/new_york.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/havasu_falls.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextField(
            decoration: const InputDecoration(
              icon: ImageIcon(
                AssetImage('assets/icons/search_icon.png'),
                color: Colors.black87,
              ),
              hintText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: mediaItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(mediaItems[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 5,
                    top: 5,
                    child: ImageIcon(
                      AssetImage('assets/icons/reels_icon.png'),
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
