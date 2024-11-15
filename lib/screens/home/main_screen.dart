import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:insta_clone/screens/home/feeds.dart';
import 'package:insta_clone/screens/home/story.dart';
import 'package:insta_clone/screens/search/search_screen.dart';
import 'package:ionicons/ionicons.dart';

void main() => runApp(const MaterialApp(
  home: MainScreen(),
  debugShowCheckedModeBanner: false,
));

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    SearchScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/home_icon.png'),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/search_icon.png'),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.plus, size: 30,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/reels_icon.png'),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/icons/profile_image.png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const Image(
                image: AssetImage('assets/icons/insta_title.png'),
                height: 60,
                width: 140,
              ),
              const SizedBox(width: 2),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Transform.rotate(
                  angle: 270 * (3.14 / 180),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.heart_outline,
                size: 32,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icons/messenger_icon.png'),
                size: 32,
              ),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Story(),
              Feeds(),
            ],
          ),
        ),
      ],
    );
  }
}
