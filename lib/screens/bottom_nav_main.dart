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
  final screen = [const HomeScreen(), const MyProfile(), const MyProfile()];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.orangeAccent[200],
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
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.dangerous_outlined,
                  color: Colors.red[900],
                  size: 60,
                ),
                label: 'Emergency',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 40),
                label: 'Profile',
              ),
            ]),
      );
}
