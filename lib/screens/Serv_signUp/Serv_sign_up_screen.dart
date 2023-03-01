import 'package:flutter/material.dart';

import '../Serv_signUp/components/body.dart';

class SverSignUpScreen extends StatelessWidget {
  static String routeName = "2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
