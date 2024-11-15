import 'package:flutter/material.dart';
import 'package:insta_clone/screens/home/main_screen.dart';
import 'login_screen.dart';

// void main() => runApp(MaterialApp(
//       home: SignUpScreen(),
//     ));

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'What\'s your mobile number?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Enter your mobile number where you can be contacted. No one will see this on your profile',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mobile number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (mobile_number) {
                      if (mobile_number!.isEmpty ||
                          !mobile_number.contains('@') ||
                          !mobile_number.contains('.')) {
                        return "Enter a valid email";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You may recieve WhatsApp and SMS notifications from us for security and login purposes.',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      minimumSize: Size(400, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up with email',
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 14),
                      minimumSize: Size(400, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      overlayColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    height: 430,
                  ),
                  GestureDetector(
                    child: Center(
                      child: Text(
                        'I already have an account',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
