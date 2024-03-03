// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/widgets/menu/contact_info.dart';
import 'package:real_estatee_app/widgets/menu/goals.dart';
import 'package:real_estatee_app/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding *2),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                           IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                           IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                           IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                          ), 
                           Spacer(),
                        ],
                      
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
