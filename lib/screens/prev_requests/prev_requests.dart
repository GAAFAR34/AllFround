import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/customer_home/components/special_offers.dart';

class PrevRequests extends StatelessWidget {
  static String routName = "/prev_requests";

  const PrevRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrevRequestsScreen();
  }
}

class PrevRequestsScreen extends StatefulWidget {
  const PrevRequestsScreen({Key? key}) : super(key: key);

  @override
  State<PrevRequestsScreen> createState() => _PrevRequestsScreenState();
}

class _PrevRequestsScreenState extends State<PrevRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Previous Requests",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SpecialOffers(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.prevReq),
    ));
  }
}
