import 'package:flutter/material.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Stack(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: CircleAvatar(
                  child: Image.asset("assets/images/Profile Image.png"),
                ),
              ),
              Positioned(
                right: 0,
                top: 37,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "You",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
