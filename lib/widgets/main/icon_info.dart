// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding *3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
            context: context,
            icon: Icons.supervisor_account,
            text: '+697',
            lable: 'Clients',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.location_on,
            text: '122',
            lable: 'Projects',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.public,
            text: '79+',
            lable: 'Contries',
          ),
          buildIconInfo(
            context: context,
            icon: Icons.star_border,
            text: '18K+',
            lable: 'Stars',
          ),
        ],
      ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String lable,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(height: 7),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          lable,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
