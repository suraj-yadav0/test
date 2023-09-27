import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void logout () async {
await FirebaseAuth.instance.signOut();
Navigator.popUntil(context, (route) => route.isFirst);
Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const LoginScreen(),),);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            logout();
          },
          child: const Text(
            "Welcome",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
