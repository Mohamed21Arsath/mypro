import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mypro/main.dart';

import 'package:mypro/screens/scr.dart';

import 'forgetpass.dart';
import 'jobscr.dart';

class Loginscr extends StatefulWidget {
  const Loginscr({super.key});

  @override
  State<Loginscr> createState() => _LoginscrState();
}

class _LoginscrState extends State<Loginscr> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfOXA7KogJJgub-ue2-FI3sxGZat0iTWv9mlAxwUgq0LjlPU-ndmliASN2uaOcxMzIABc&usqp=CAU'),
              Text(
                'Job Hop',
                style: GoogleFonts.monoton(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                  print('Forget Password Pressed');

                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Forgetpassscr();
                  }), (r) {
                    return false;
                  });
                },
                child: const Text(
                  'Forgot Password',
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        // if ("user" == nameController.text &&
                        //     "123" == passwordController.text) {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Jobview();
                        }), (r) {
                          return false;
                        });
                      })),
              Container(
                width: 250,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New User?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return New();
                              },
                            ),
                          );
                        },
                        child: const Text('Create Account')),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
