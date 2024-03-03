// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                Text(
                  'Build a great Future for all of us!',
                  style: Responsive.isDesktop(context)? Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color:kDarkColor, fontWeight: FontWeight.bold)
                      : Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                ),
                SizedBox(height: kDefaultPadding,),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding*2,
                      vertical: kDefaultPadding,
                    ),
                    backgroundColor: Colors.white60,
                  ),
                    onPressed: () {},
                    child: Text(
                      'CONTACT US',
                      style: TextStyle(color: kDarkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
