import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:instagram_flutter/Profile/view/Profilepage.dart';

class Signpage extends StatelessWidget {
  const Signpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Container(
            width: 1900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Don\'t have an account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Sign Up.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ))
      ],
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () => {Get.to(const profilePage())},
                      icon: const Icon(
                        Icons.clear,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 40,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 90),
              child: Column(children: [
                const Text(
                  "Instagram",
                  style: TextStyle(
                      fontSize: 70,
                      fontFamily: "Billabong",
                      letterSpacing: 3.0),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    suffixIcon: const IconButton(
                      icon: Icon(Icons.lock),
                      onPressed: null,
                    ),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "log in",
                          )
                        ],
                      ),
                    )),
                Row(children: const <Widget>[
                  Expanded(
                      child: Divider(
                    color: Color.fromARGB(255, 156, 147, 147),
                  )),
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text("OR"),
                  ),
                  Expanded(
                      child: Divider(
                    color: Color.fromARGB(255, 156, 147, 147),
                  )),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Log in with Facebook",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
