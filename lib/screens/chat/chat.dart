import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/models/Chat.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/components/filled_outline_button.dart';
import 'package:shop_app/screens/chat/chat_card.dart';

class Chat extends StatelessWidget {
  static String routName = "/chat";

  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatScreen();
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Chats',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              color: kPrimaryColor,
              child: Row(
                children: [
                  FillOutlineButton(press: () {}, text: "Recent Message"),
                  SizedBox(width: 20),
                  FillOutlineButton(
                    press: () {},
                    text: "Active",
                    isFilled: false,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) =>
                    ChatCard(chat: chatsData[index], press: () {}),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.message,
        ),
      ),
    );
  }
}
