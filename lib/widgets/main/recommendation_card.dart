// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/models/recommendation.dart';


class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage:
                  AssetImage(recommendation.image!),
            ),
            title: Text(
             recommendation.name!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: kDefaultPadding /2,),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
