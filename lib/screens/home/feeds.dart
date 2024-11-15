import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feeds extends StatefulWidget {
  @override
  State<Feeds> createState() => _FeedState();
}

class _FeedState extends State<Feeds> {
  final List<String> posts = [
    'assets/images/amazon_forest.png',
    'assets/images/bangkok.png',
    'assets/images/havasu_falls.png',
    'assets/images/london.png',
    'assets/images/new_york.png',
    'assets/images/rocky_mountain.png',
    'assets/images/sahara_dessert.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(posts[index]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'user${index + 1}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Location'),
                  ],
                ),
                SizedBox(width: 220,),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),

              ],
            ),
            Image.asset(
              posts[index],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border, size: 26),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const ImageIcon(
                      AssetImage('assets/icons/comment.webp'),
                      size: 26),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const ImageIcon(
                      AssetImage('assets/icons/send.jpg'),
                      size: 24),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark_border, size: 26),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '${(index + 1) * 42} likes',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'user${index + 1} ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                        text: 'Enjoying the view of this beautiful place!'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Date',
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
