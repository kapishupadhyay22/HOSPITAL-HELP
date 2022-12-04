import 'package:flutter/material.dart';
import 'package:hospital_auth/screens/home_scren.dart';
import 'package:hospital_auth/screens/pfp_disp.dart';
import 'package:hospital_auth/screens/pfp_edit.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final screen = [const HomeScreen(), const MyProfileInfo()];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[currentIndex],
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          //margin: const EdgeInsets.fromLTRB(0, 90, 0, 0),
          height: 70,
          width: 70,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {},
            label: const Text(
              'SOS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            //icon: const Icon(Icons.dangerous_sharp),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 40),
                label: 'Profile',
              ),
            ]),
      );
}
