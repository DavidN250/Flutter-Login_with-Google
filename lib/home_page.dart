// ignore_for_file: unnecessary_this, unnecessary_new

import 'package:flutter/material.dart';
import 'package:post_app/post.dart';
import 'package:post_app/post_list.dart';
import 'package:post_app/text_input.dart';

class HomePage extends StatefulWidget {
  final String name;
  const HomePage({Key? key, required this.name} ) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '';

  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POST APP'),
      ),
      body: Column(children: <Widget>[
        Expanded(child: PostList(listItems: this.posts)),
        TextInputWidget(
          callbackFunction: this.newPost,
        ),
        Text(this.text)
      ]),
    );
  }
}
