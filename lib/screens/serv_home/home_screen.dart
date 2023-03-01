import 'package:flutter/material.dart';

import 'package:shop_app/config/palette.dart';
import 'package:shop_app/config/styles.dart';
import '../data/data.dart';
import '../widgets/custom_app_bar.dart';

class ServHomeScreen extends StatefulWidget {
  
  @override
  _ServHomeScreenState createState() => _ServHomeScreenState();
}

class _ServHomeScreenState extends State<ServHomeScreen> {
  static String routName = "";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(rating: 0.0),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'WELCOME ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            //SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'ABDALLA GAAFAR',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //SizedBox(height: screenHeight * 0.01),

                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Transfer',
                        style: Styles.buttonTextStyle,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.monetization_on_rounded,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Withdraw',
                        style: Styles.buttonTextStyle,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Requests',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                        children: <Widget>[
                          Image.asset(
                            e.keys.first,
                            height: screenHeight * 0.12,
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            e.values.first,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            padding: const EdgeInsets.all(10.0),
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFAD9FE4), Palette.primaryColor],
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/images/TwoWorkers.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mechanical',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Follow the instructions\n do your own best.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      maxLines: 2,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            padding: const EdgeInsets.all(10.0),
            height: screenHeight * 0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFAD9FE4), Palette.primaryColor],
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/images/OneWorker.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Technical ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Follow the instructions\n do your own best.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      maxLines: 2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
