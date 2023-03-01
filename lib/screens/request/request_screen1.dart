import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/request/request_details_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../constants.dart';

class CustomerRequest extends StatelessWidget {
  static String routeName = "/request";

  @override
  Widget build(BuildContext context) {
    return CustomerRequestScreen();
  }
}

class CustomerRequestScreen extends StatefulWidget {
  const CustomerRequestScreen({Key? key}) : super(key: key);

  @override
  State<CustomerRequestScreen> createState() => _CustomerRequestScreenState();
}

class _CustomerRequestScreenState extends State<CustomerRequestScreen> {
  String? description;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electric Services',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Image.asset(
                'assets/images/request.png',
                height: 150,
              ),
              Text(
                'Tell us more about the issue.',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Describe the problem',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Photo',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Upload a photo of the issue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Video',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Upload a video of the issue',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.videocam,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultButton(
                  text: 'Next',
                  press: () {
                    Navigator.pushNamed(context, RequestDetails.routeName);
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
