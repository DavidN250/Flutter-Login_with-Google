// ignore_for_file: prefer_const_constructors, unnecessary_new, unnecessary_this, prefer_const_literals_to_create_immutables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:post_app/auth.dart';
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
  late FirebaseUser user;

  void click() {
    this.name = controller.text;
    signInWithGoogle().then((user) => {
      this.user = user,
      // Navigator.push(
    //     // context,
    //     // MaterialPageRoute(
    //     //   builder: (context) => HomePage(),
    //     ));
    });
    
  }

Widget googleLoginButton() {
 return  OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45))),
      side: BorderSide(color: Colors.grey),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10)
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(image: AssetImage('assets/google_logo.png'),height: 35),
        Padding(padding: EdgeInsets.only(left: 10),child: Text('Sin in with Google', style: TextStyle(fontSize: 20, color: Colors.grey),),)
      ],
    ),
    
    onPressed: () { },
  );
}
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: googleLoginButton(),
    );
  }
}
