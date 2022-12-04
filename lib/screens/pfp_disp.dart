import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hospital_auth/screens/bottom_nav_main.dart';
import 'package:hospital_auth/screens/pfp_edit.dart';
import 'package:hospital_auth/utils/color_utils.dart';
import 'first_page.dart';

class MyProfileInfo extends StatelessWidget {
  const MyProfileInfo({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "MY PROFILE",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("SIGNOUT");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const first_page()));
                });
              },
              child: const Icon(
                Icons.logout_rounded,
                size: 30,
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("416C71"),
            hexStringToColor("7e253e"),
            hexStringToColor("5c5398")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.14,
                        ),
                        Container(
                          child: Text(
                            "19 years (MALE)",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Blood",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "O+",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ],
                                ),
                                const VerticalDivider(
                                  color: Colors.black87,
                                  width: 30,
                                  thickness: 0.5,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Height",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "175",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ],
                                ),
                                const VerticalDivider(
                                  color: Colors.black87,
                                  width: 30,
                                  thickness: 0.5,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Weight",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "75",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const Text("Options",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                            )),
                        const Divider(
                          color: Colors.black,
                          thickness: 0.5,
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            child: Text(
                              "EDIT PROFILE",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => MyProfile())));
                            },
                            style: ButtonStyle(
                                //want to making elevation of the button as zero
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black26;
                                  }
                                  return Colors.white.withOpacity(0.0001);
                                }),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            child: Text(
                              "Settings",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => MyProfile())));
                            },
                            style: ButtonStyle(
                                //want to making elevation of the button as zero
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black26;
                                  }
                                  return Colors.white.withOpacity(0.0001);
                                }),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            child: Text(
                              "Report Abuse",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => MyProfile())));
                            },
                            style: ButtonStyle(
                                //want to making elevation of the button as zero
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black26;
                                  }
                                  return Colors.white.withOpacity(0.0001);
                                }),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Unknown.png"),
                      radius: 80,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "KAPISH UPADHYAY",
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
