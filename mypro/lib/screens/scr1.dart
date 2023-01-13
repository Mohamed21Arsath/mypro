import 'package:flutter/material.dart';
import 'package:mypro/screens/scr2.dart';

// void main() {
//   runApp(NewPage());
// }

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Education Details',
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
            labelText: 'Education Qualification',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name of Institution',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Year of Passing',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Batch',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Percentage',
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          child: const Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const NewPage();
                },
              ),
            );
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: 70,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return hi();
                      },
                    ),
                  );
                },
                child: const Text(" Next ")),
          ),
        ),
      ),
    ]));
  }
}
