import 'package:flutter/material.dart';
import 'package:shop_app/config/palette.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double rating;

  const CustomAppBar({Key? key, required this.rating}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'My',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Requests',
            style: TextStyle(
              color: Palette.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
