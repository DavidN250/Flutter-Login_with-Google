// ignore_for_file: prefer_const_constructors, unnecessary_this, prefer_const_literals_to_create_immutables, unnecessary_new, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:post_app/login_page.dart';

void main() {

  
  runApp(const PostApp());
}

class PostApp extends StatelessWidget {
  const PostApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
