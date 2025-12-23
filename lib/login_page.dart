import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // will Generate TextEditingController Soon.
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