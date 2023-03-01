import 'package:flutter/material.dart';

import 'components/body.dart';

class ServCompleteProfileScreen extends StatelessWidget {
  static String routeName = "4";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
