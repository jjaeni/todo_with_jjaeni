import 'package:flutter/material.dart';
import 'package:todo_with_jjaeni/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // id/pw Controller
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  void _login() {
    final id = idController.text;
    final pw = pwController.text;

  // Temporary logic of login (will change temporary login to DB/API)
  if (id == 'test' && pw == '1234') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  } else {
    // Will update soon.
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white
      ,
      appBar:AppBar(
        title: const Text('Login'),
      ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [

          // TextField of ID
          TextField(
            decoration: const InputDecoration(
              labelText: 'ID',
              border: OutlineInputBorder(), // outer square line
            ),
          ),

          const SizedBox(height: 20),

          // TextField of PW
          TextField(
            obscureText: true, // hide PW
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    ),
    );
  }
}