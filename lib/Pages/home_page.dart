import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'API Calling with Bloc',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
         child: ListView(),
      ),
    );
  }
}
