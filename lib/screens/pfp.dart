import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget listTile({icon, title}) {
    return Column(
      children: [
        Divider(
          height: 0.5,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        title: Text(
          "Your Profile",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 561,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "Name:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 15),
                                  Text("Email:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                        title: Text("🩸 Blood Group :"),
                        subtitle: Text("    q")),
                    ListTile(
                        title: Text("🚻 Gender:"), subtitle: Text("    q")),
                    ListTile(
                        title: Text("𐄷 Weight:"), subtitle: Text("    q")),
                    ListTile(title: Text("〖 Height:"), subtitle: Text("    q")),
                    ListTile(title: Text("Booking Status:")),
                    ListTile(
                        title: Text(
                      " LOG OUT 🛅",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    )),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 25,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Unknown.png"),
                radius: 45,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
