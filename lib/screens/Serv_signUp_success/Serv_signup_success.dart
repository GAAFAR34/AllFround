import 'package:flutter/material.dart';

import '../Serv_signUp_success/components/body.dart';


class ServSignUpSuccessScreen extends StatelessWidget {
  static String routeName = "10";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Sign Up Success"),
      ),
      body: Body(),
    );
  }
}
