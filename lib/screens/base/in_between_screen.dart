import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/screens/base/sign_up_screen.dart';
import 'package:insta_clone/screens/home/main_screen.dart';
import 'package:ionicons/ionicons.dart';

// void main() => runApp(MaterialApp(
//       home: InBetweenScreen(),
//       debugShowCheckedModeBanner: false,
//     ));

class InBetweenScreen extends StatefulWidget {
  const InBetweenScreen({super.key});

  @override
  State<InBetweenScreen> createState() => _InBetweenScreenState();
}

class _InBetweenScreenState extends State<InBetweenScreen> {
  @override
  Widget build(BuildContext context) {
    void profiles() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 8, top: 20),
                          child: GestureDetector(
                            child: Icon(Icons.close),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 150, top: 10),
                        child: Text(
                          'Profiles',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 10, top: 10),
                child: GestureDetector(
                  child: Icon(
                    Icons.more_horiz,
                    size: 32,
                  ),
                  onTap: profiles,
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/icons/instagram.png',
                  height: 65,
                  width: 65,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Center(
                  child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/profile_image.png'),
                radius: 75,
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              'orewaa_nekotha',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Text('Log in'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    minimumSize: Size(400, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Center(
                  child: Text(
                'Log into another account',
                style: GoogleFonts.poppins(fontSize: 12),
              )),
              onTap: () {},
            ),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              },
              child: Text(
                'Create new account',
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue,
                textStyle: TextStyle(fontSize: 12),
                minimumSize: Size(400, 35),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.blue, width: 1),
                ),
                overlayColor: Colors.transparent,
              ),
            ),
            Center(
              child: Image.asset(
                'assets/icons/meta_grey.png',
                height: 40,
                width: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
