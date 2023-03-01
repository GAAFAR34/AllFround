import 'package:flutter/material.dart';

import '../customer_login/components/body.dart';

class CustomerLogInScreen extends StatelessWidget {
  static String routeName = "/customer_login";
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
