import 'package:flutter/material.dart';
import 'package:todo_with_jjaeni/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Declare a id/pw Controller
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  void _login() {
    // Change a value in variable only.
    final id = idController.text;
    final pw = pwController.text;

    // Temporary logic of login (will change temporary login to DB/API)
    if (id == 'test' && pw == '1234') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      // When you fill the wrong ID/PW, display this snack bar in the screen.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ID 또는 PW가 틀렸습니다.'))
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Login')),
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // TextField of ID
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                labelText: 'ID',
                border: OutlineInputBorder(), // outer square line
              ),
            ),

            const SizedBox(height: 12),

            // TextField of PW
            TextField(
              controller: pwController,
              obscureText: true, // hide PW
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            // Press button of Login
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('login'))
          ],
        ),
      ),
    );
  }
}