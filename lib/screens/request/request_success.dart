import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/customer_home/customer_home_screen.dart';
import 'package:shop_app/size_config.dart';

class RequestSuccess extends StatelessWidget {
  static String routeName = "/request_success";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight * 0.4, //40%
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              "Your Request is successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: "Back to home",
                press: () {
                  Navigator.pushNamed(context, CustomerHomeScreen.routeName);
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
