import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Providence",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    "Welcom Back",
                    style: TextStyle(
                      color: Color(0xFFA4BE9B),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                  backgroundColor: const Color(0xFF6F9860),
                ),
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                  child: Image.asset(
                                      "assets/images/Profile Image.png"),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 38,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "You",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
