import 'package:flutter/material.dart';

import '../Serv_login/components/body.dart';

class ServLogInScreen extends StatelessWidget {
  static String routeName = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    );
  }
}
