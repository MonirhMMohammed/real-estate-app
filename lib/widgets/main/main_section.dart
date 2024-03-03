// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estatee_app/models/recommendation.dart';
import 'package:real_estatee_app/screens/home_screen.dart';
import 'package:real_estatee_app/widgets/main/home_banner.dart';
import 'package:real_estatee_app/widgets/main/icon_info.dart';
import 'package:real_estatee_app/widgets/main/projects.dart';
import 'package:real_estatee_app/widgets/main/recomendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
