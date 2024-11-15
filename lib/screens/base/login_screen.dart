import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/screens/base/sign_up_screen.dart';
import 'package:insta_clone/screens/home/main_screen.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginScreen(),
//   ));
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = true;
  GlobalKey<FormState> formKey = GlobalKey();
  List<String> items = [
    'English(US)',
    'English(UK)',
    'English(IN)',
    'Malayalam(IN)',
    'Malay',
    'Hindi',
  ];
  String selectedValue = 'English(US)';

  void showLanguageSelection() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 20),
                child: GestureDetector(
                    child: Icon(Icons.close),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  'Select your language',
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (var item in items)
                ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      selectedValue = item;
                    });
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextButton(
                  style: TextButton.styleFrom(minimumSize: Size(100, 20)),
                  onPressed: showLanguageSelection,
                  child: Text(
                    selectedValue,
                    style: TextStyle(fontSize: 12),
                  ), // Display selected language
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/icons/instagram.png',
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username, email or mobile number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (username) {
                    if (username!.isEmpty ||
                        !username.contains('@') ||
                        !username.contains('.')) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPass = !showPass;
                        });
                      },
                      icon: Icon(
                        showPass
                            ? /*Icons.visibility_off*/ null
                            : Icons.visibility,
                        // color: showPass ? Colors.black : Colors.blue,
                      ),
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Invalid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
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
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    minimumSize: Size(400, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    textStyle: TextStyle(fontSize: 14),
                    minimumSize: Size(400, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.blue, width: 2),
                    ),
                    overlayColor: Colors.transparent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icons/meta_grey.png',
                  height: 40,
                  width: 70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
