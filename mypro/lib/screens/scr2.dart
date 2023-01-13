import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mypro/screens/loginscr.dart';
import 'package:mypro/screens/scr3.dart';

class hi extends StatefulWidget {
  hi({super.key});

  @override
  State<hi> createState() => _hiState();
}

class _hiState extends State<hi> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
              child: const Text(
            'Work Experirence',
            style: TextStyle(
                color: Color.fromARGB(255, 13, 13, 14),
                fontWeight: FontWeight.w500,
                fontSize: 30),
          )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Work Experience',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Company Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Position',
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 75,
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'From Date',
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 75,
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'To Date',
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Loginscr();
                      },
                    ),
                  );
                },
                child: const Text("Done ")),
          ),
        ],
      ),
    );
  }
}
