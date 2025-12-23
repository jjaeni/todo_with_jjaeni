import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('HOME')),
      body: const Center(child: Text(
        '로그인 성공',
        style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}