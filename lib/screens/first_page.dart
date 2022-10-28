import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hospital_auth/screens/singin_screen.dart';

import '../main.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "WELCOME",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text("USER"),
              onPressed: () {
                a = 1;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
            ),
            ElevatedButton(
                child: Text("ADMIN"),
                onPressed: () {
                  a = 2;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                }),
          ],
        ));
  }
}
