import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        "assets/images/Profile Image.png",
                      ),
                    ),
                    Positioned(
                      top: 35,
                      right: 0,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "Ralph Edwards",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  "For Athletes, high altitude produces...",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "12:36 PM",
                      style: TextStyle(color: kPrimaryColor, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                      ),
                      child: const Center(
                          child: Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.1),
              ),
            )
          ],
        );
      },
    );
  }
}
