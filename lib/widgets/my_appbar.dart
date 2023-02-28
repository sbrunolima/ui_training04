import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/profile.jpg',
                      scale: 4, fit: BoxFit.cover),
                ),
              ),
              Column(
                children: const [
                  Icon(
                    EneftyIcons.menu_2_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
