import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/request/request_success.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/constants.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class RequestDetails extends StatelessWidget {
  static String routeName = '/request_details';

  @override
  Widget build(BuildContext context) {
    return RequestDetailsScreen();
  }
}

class RequestDetailsScreen extends StatefulWidget {
  const RequestDetailsScreen({Key? key}) : super(key: key);

  @override
  State<RequestDetailsScreen> createState() => _RequestDetailsScreenState();
}

class _RequestDetailsScreenState extends State<RequestDetailsScreen> {
  String? location;
  final List<String> items = [
    'Cash',
    'Credit/Debit Card',
    'Online Banking',
    'Paypal',
  ];
  String? selectedValue;

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
                'More Details',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Location',
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
                child: TextFormField(
                  onSaved: (newValue) => location = newValue,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    hintText: 'Insert your location',
                    suffixIcon: CustomSurffixIcon(
                      svgIcon: 'assets/icons/location.svg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Date',
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
                child: DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'd MMM, yyyy',
                  initialValue: DateTime.now().toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  // icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                  // timeLabelText: "Hour",
                  selectableDayPredicate: (date) {
                    // Disable weekend days to select from the calendar
                    if (date.weekday == 6 || date.weekday == 7) {
                      return false;
                    }

                    return true;
                  },
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Time',
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
                child: DateTimePicker(
                  type: DateTimePickerType.time,
                  timeLabelText: 'Time',
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Price',
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
                child: TextFormField(
                  onSaved: (newValue) => location = newValue,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    hintText: 'Your Expected Price',
                    suffixIcon: Icon(
                      Icons.attach_money_sharp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    Text(
                      'Payment method',
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
                child: Row(
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text('Select Method'),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 300,
                        itemHeight: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultButton(
                  text: 'confirm',
                  press: () {
                    Navigator.pushNamed(
                      context,
                      RequestSuccess.routeName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
