// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            Image.asset(
              'assets/images/logo.png',
              width: 70,
            ),
           Spacer(), 
            Text(
              'Real Estste',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'Modern Home with\n  greate interior design',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1),
            ),
            Spacer(flex: 2,),
          ],
    
        ),
      ),
    );
  }
}