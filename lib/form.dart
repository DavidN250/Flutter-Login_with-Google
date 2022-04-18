// ignore_for_file: prefer_const_constructors, unnecessary_new, unnecessary_this
import 'package:flutter/material.dart';
import 'package:post_app/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('POST APP'),
        ),
        body: LoginBody());
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  String name = '';
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    // Navigator.push(
    //     // context,
    //     // MaterialPageRoute(
    //     //   builder: (context) => HomePage(),
    //     ));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget> [TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Type Your Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffix: IconButton(
                  icon: Icon(Icons.done),
                  splashColor: Colors.blue,
                  tooltip: 'Submit',
                  onPressed: () {
                      Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => HomePage(name: this.controller.text,)),
              );
            },
                )),
          ),
          SizedBox(height:10),
          TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Type Your Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffix: IconButton(
                  icon: Icon(Icons.done),
                  splashColor: Colors.blue,
                  tooltip: 'Submit',
                  onPressed: () {
                      Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => HomePage(name: this.controller.text,)),
              );
            },
           )),
          ),
          SizedBox(height:10),
          TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Type Your Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffix: IconButton(
                  icon: Icon(Icons.done),
                  splashColor: Colors.blue,
                  tooltip: 'Submit',
                  onPressed: () {
                      Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => HomePage(name: this.controller.text,)),
              );
            },
                )),
          )],
        ),
      ),
    );
  }
}
