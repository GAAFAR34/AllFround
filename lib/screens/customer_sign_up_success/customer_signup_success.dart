import 'package:flutter/material.dart';

import 'components/body.dart';

class CustomerSignUpSuccessScreen extends StatelessWidget {
  static String routeName = "/sign_up_success";
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
