import 'package:flutter/material.dart';
import 'package:hospital_auth/screens/home_scren.dart';
import 'package:hospital_auth/screens/pfp.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screen = [const HomeScreen(), const MyProfile()];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {},
            label: const Text(
              'SOS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            //icon: const Icon(Icons.dangerous_sharp),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.deepPurple,
            selectedItemColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 40),
                label: 'Profile',
              ),
            ]),
      );
}
