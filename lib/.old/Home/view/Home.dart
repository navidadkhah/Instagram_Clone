import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromRGBO(69, 50, 60, 0.35),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "instagram",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Billabong"),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Colors.amber,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}