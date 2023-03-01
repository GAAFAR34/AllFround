import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/bottom_nav_screen.dart';
import 'package:shop_app/screens/customer_login/customer_login_screen.dart';
import 'package:shop_app/screens/serv_home/home_screen.dart';
import 'package:shop_app/screens/bottom_nav_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/routes.dart';

import '../Serv_login/Serv_login_screen.dart';

class ChoiceScreen extends StatelessWidget {
  // const ChoiceScreen({super.key});
  static String routeName = "/choice";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Choice_background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(0),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: DefaultButton(
                  text: 'Customer',
                  press: () {
                    Navigator.pushNamed(context, CustomerLogInScreen.routeName);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: DefaultButton(
                  text: 'Service Provider',
                  press: () {
                    Navigator.pushNamed(context, ServLogInScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
