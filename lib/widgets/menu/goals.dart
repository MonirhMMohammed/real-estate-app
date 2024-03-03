// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estatee_app/constants.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        buildGoals(text: 'Planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution'),
        buildGoals(text: 'New way to living'),
      ],
    );
  }

  Padding buildGoals({ required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(text , style: TextStyle(fontSize: 10),),
          ],
        ),
      );
  }
}
