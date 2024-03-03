// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/models/projects.dart';
import 'package:real_estatee_app/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ours project',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Responsive(
          desktop: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
           tablet: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: MediaQuery.of(context).size.width <900? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
           mobileLarge: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxsitCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder);
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
    super.key,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'More info >',
              style: TextStyle(color: kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}
