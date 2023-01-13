import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'jobscr.dart';

class Joboffer extends StatefulWidget {
  const Joboffer({super.key});

  @override
  State<Joboffer> createState() => _JobofferState();
}

class _JobofferState extends State<Joboffer> {
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
              Text(
                'Create a New Job Offer',
                style: GoogleFonts.pathwayGothicOne(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 44, 179, 241)),
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
                    labelText: 'Job Title',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Experience Needed',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  expands: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Salary in Lakhs Per Annum (LPA)',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Skills Required',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Job Type (WFH or On-Site)',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No. Of. Positions',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  minLines: null,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  expands: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Website to Apply',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Create'),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Jobview();
                      }), (r) {
                        return false;
                      });
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

