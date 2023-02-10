import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

// import 'package:demo2/data/Auth/signin.dart';
// import 'package:demo2/data/Auth/Login.dart';
import './Login.dart';
// import 'data/Drower.dart';

// void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),

      // _MyhomePage(),
    );
  }
}
