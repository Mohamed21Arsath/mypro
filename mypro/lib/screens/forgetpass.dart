import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mypro/screens/jobscr.dart';

class Forgetpassscr extends StatefulWidget {
  const Forgetpassscr({super.key});

  @override
  State<Forgetpassscr> createState() => _ForgetpassscrState();
}

class _ForgetpassscrState extends State<Forgetpassscr> {
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
              const Image(
                image: AssetImage('assets/AppMainIcon.png'),
                width: 100,
                height: 200,
              ),
              Text(
                'Job Hop',
                style: GoogleFonts.monoton(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              Text(
                'Forgot Password',
                style: GoogleFonts.pathwayGothicOne(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 44, 179, 241)),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Text(
                    'Enter your Mail ID and the OTP which is sent to your E-Mail',
                    style: TextStyle(
                      fontSize: 13,

                      // fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 95, 95, 95),
                    ),
                  )),
              const Text(
                'Then, Set New Password',
                style: TextStyle(
                    fontSize: 13,

                    // fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 95, 95, 95)),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail ID',
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
                    labelText: 'OTP (One Time Password)',
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
                    labelText: 'New Password',
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
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      // print(nameController.text);
                      // print(passwordController.text);
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Jobview();
                      }), (r) {
                        return false;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
