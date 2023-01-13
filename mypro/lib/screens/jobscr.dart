import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mypro/screens/scr3.dart';

import 'Sidebar.dart';
import 'joboffer.dart';

class Jobview extends StatefulWidget {
  const Jobview({super.key});

  @override
  State<Jobview> createState() => _JobviewState();
}

class _JobviewState extends State<Jobview> {
  var image;
  var compName;
  var role;
  final myProducts = List<String>.generate(100, (i) => 'Product $i');
  var i = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Side(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: 300,
                child: Text(
                  'Job Hop',
                  style: GoogleFonts.monoton(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
              ),
              background: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB5QQTnT2MGzo5U_k7kyUW7EJZ5Qxf4_y1DA&usqp=CAU',
                fit: BoxFit.fill,
              ),
            ),
          ),
          // 3

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      elevation: 10,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              color: Colors.blue[100 * (index % 9 + 1)],
                              height: 50,
                              width: 50,
                              child: Image.network(
                                  'data:image/png;base64,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')),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 3, right: 8),
                                    child: Text(
                                      'Graspear Solutions Pvt Ltd',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 3, right: 8),
                                    child: Text(
                                      'App Developer',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100 * (index % 9 + 1)],
                              ),
                              height: 30,
                              child: TextButton(
                                child: const Text(
                                  'View',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return Describe(roal: i);
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100 * (index % 9 + 1)],
                              ),
                              height: 30,
                              child: TextButton(
                                child: const Text(
                                  'Interested',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    i = 1;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 1000, // 1000 list items
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return const Joboffer();
          }), (r) {
            return false;
          });
        },
        label: const Text('Create New Job Offer'),
      ),
    );
  }
}
