// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Station Street 5'
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Riyadh - Al-kharj'
        ),
        buildContactInfo(
          title: 'Email',
          text: 'email@websate.com'
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+9665576669'
        ),
        buildContactInfo(
          title: 'Website',
          text: 'my@website.com'
        ),

      ],
    );
  }

  Padding buildContactInfo(
    {required String title ,  required String text}
  ) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding /2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$title', style: TextStyle(color: Colors.white , fontSize: 10),),
            Text('$text' , style: TextStyle(fontSize: 10),)
            ],
        ),
      );
  }
}
