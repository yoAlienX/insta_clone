import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  final List<String> stories = [
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/london.png',
    'assets/images/new_york.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return addStory();
          } else {
            return otherStories(stories[index - 1]);
          }
        },
      ),
    );
  }

  Widget addStory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            width: 80,
            padding: const EdgeInsets.all(2.5),
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage:
                    AssetImage('assets/icons/profile_image.png'),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 2,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 13,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue,
                      ),
                      child: const Icon(
                        size: 22,
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'orewaa_nekotha',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget otherStories(String storyImage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2.5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.purple,
                  Colors.orange,
                  Colors.pink,
                  Colors.yellow,
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 36,
                backgroundImage: AssetImage(storyImage),
              ),
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'Username',
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
