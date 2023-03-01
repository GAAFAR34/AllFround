import 'package:flutter/material.dart';

import 'package:shop_app/screens/Serv_login_success/components/body.dart';
class ServLoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success88";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
