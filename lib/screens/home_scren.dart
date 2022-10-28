import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital_auth/screens/first_page.dart';
import 'package:hospital_auth/screens/singin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text("LOGOUT"),
      onPressed: () {
        FirebaseAuth.instance.signOut().then((value) {
          print("SIGNOUT");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => first_page()));
        });
      },
    ));
  }
}
