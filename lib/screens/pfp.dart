import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget listTile({icon, title}) {
    return Column(
      children: [
        const Divider(
          height: 0.5,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                color: Colors.orangeAccent,
              ),
              Container(
                height: 561,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    ListTile(
                        title: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Name *',
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@'))
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    )),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.bloodtype_outlined),
                          hintText: 'What is your blood group?',
                          labelText: 'Blood Group : *',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.transgender_outlined),
                          hintText: '?',
                          labelText: 'Gender *',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('1234567890'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.height),
                          hintText: 'Whats your height?',
                          labelText: 'Height *',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.line_weight_outlined),
                          hintText: 'Whats your weight?',
                          labelText: 'Weight *',
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                        width: 10,
                        height: 50,
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: ElevatedButton(
                            child: Text("LOG OUT"),
                            onPressed: () {
                              FirebaseAuth.instance.signOut().then((value) {
                                print("SIGNOUT");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const first_page()));
                              });
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.black12;
                                  }
                                  return Colors.red[300];
                                }),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)))))),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 150,
              left: 25,
            ),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Unknown.png"),
                radius: 60,
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
