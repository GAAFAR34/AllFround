import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/request/request_screen1.dart';
import 'package:shop_app/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.15,
            right: SizeConfig.screenWidth * 0.15,
            bottom: getProportionateScreenWidth(40),
            top: getProportionateScreenWidth(15),
          ),
          child: DefaultButton(
            text: "Request Service",
            press: () {
              Navigator.pushNamed(context, CustomerRequest.routeName);
            },
          ),
        ),
      ],
    );
  }
}
