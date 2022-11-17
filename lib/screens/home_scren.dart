import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospital_auth/reusable_widget/resuable_widget.dart';
import 'package:hospital_auth/screens/first_page.dart';
import 'package:hospital_auth/screens/pfp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final images = [
    "assets/images/imageC1.png"
        "assets/images/imagec2.png"
        "assets/images/imagec3.png"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 300,
              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: PageView.builder(
                itemCount: 3,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Image.network(images[pagePosition]);
                },
              )),
          Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.fromLTRB(65, 20, 10, 0),
              child:
                  listButton("Available beds", context, 1, Icons.bed_outlined)),
          Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.fromLTRB(65, 20, 10, 0),
              child: listButton("Available Vaccination slots", context, 2,
                  Icons.water_drop_outlined)),
          Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.fromLTRB(65, 20, 10, 0),
              child: listButton(
                "Doctor's appointment",
                context,
                3,
                Icons.local_hospital,
              )),
        ],
      ),
    );
  }
}
