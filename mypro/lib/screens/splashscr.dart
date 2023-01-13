import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'loginscr.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Loginscr())));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(100.0),
        child: Scaffold(
          body: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 216, 216),
                  border: Border.all(
                    color: const Color.fromARGB(255, 248, 42, 28),
                    width: 5,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfOXA7KogJJgub-ue2-FI3sxGZat0iTWv9mlAxwUgq0LjlPU-ndmliASN2uaOcxMzIABc&usqp=CAU'),
                  SizedBox(
                    child: Text(
                      'Job Hop',
                      style: GoogleFonts.monoton(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),
                ],
              )),
        ));
  }
}
