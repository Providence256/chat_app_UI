import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/home/widget/chat_list.dart';
import 'package:chat_app/screens/home/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(185),
          child: AppBar(
            flexibleSpace: const CustomAppBar(),
          ),
        ),
        body: const SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ChatList(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 1,
          height: 70,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.message_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.star_border_outlined),
              ),
              const SizedBox(width: 100),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_outlined,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
