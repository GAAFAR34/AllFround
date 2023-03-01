import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: "Free Vouchers \n",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: "Up to 20% discounts,\ntap to claim."),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/images/discount.png',
            height: 80,
          )
        ],
      ),
    );
  }
}
