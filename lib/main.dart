import 'package:flutter/material.dart';

import 'All_Screen/HomeScreen.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nagad clone',
      home: HomeScreen(),
    );
  }
}
