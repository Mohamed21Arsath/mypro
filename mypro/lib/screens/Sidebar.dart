import 'package:flutter/material.dart';

class Side extends StatelessWidget {
  const Side({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'USERNAME',
              style: TextStyle(
                  color: Color.fromARGB(255, 178, 252, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            accountEmail: const Text('username@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'assets/images/JobHoplogo.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            )),
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/re.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.question_answer_rounded),
            title: const Text('FAQs'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.announcement_rounded),
            title: const Text('About'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_rounded),
            title: const Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
