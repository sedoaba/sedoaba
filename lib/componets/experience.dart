// ignore_for_file: unused_element, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lebohang_sedoaba/utils/text_styles.dart';
import 'package:lebohang_sedoaba/models/education.dart';
import 'package:lebohang_sedoaba/utils/strings.dart';

final workingExperienceList = [
  Education(
    'May 2018',
    'Present',
    'Britehouse',
    'Software Developer',
  ),
  Education(
    'JUN 2022',
    'Present',
    'Proparty management system',
    'Software Developer - My Side Project',
  ),
  Education(
    'Jul 2016',
    'May 2018',
    'Bidvest Facilities Management',
    'Software Developer',
  ),
  Education(
    'Feb 2016',
    'Jun 2016',
    'Dawn Park Primary School',
    'Desktop Support Specialist',
  ),
  Education(
    'Oct 2014',
    'Feb 2015',
    'Ugihub - Startup',
    'Mobile Application Developer',
  ),
];

class Experience extends StatelessWidget {
  const Experience(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildEducationContainerHeading(),
        _buildEducationSummary(),
        SizedBox(height: 8.0),
        _buildEducationTimeline(),
      ],
    );
  }
}

Widget _buildEducationContainerHeading() {
  return Text(
    Strings.experience,
    style: TextStyles.sub_heading,
  );
}

Widget _buildEducationSummary() {
  return Text(
    'Over the years I have gather experience from individual freelancing and working with various teams, startups and organisations. Some are listed bellow;',
    style: TextStyles.body,
  );
}

Widget _buildEducationTimeline() {
  final List<Widget> widgets = workingExperienceList
      .map((education) => _buildEducationTile(education))
      .toList();
  return Column(children: widgets);
}

Widget _buildEducationTile(Education education) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${education.post}',
          style: TextStyles.company,
        ),
        Text(
          '${education.organization}',
          style: TextStyles.body.copyWith(
            color: Color(0xFF45405B),
          ),
        ),
        Text(
          '${education.from}-${education.to}',
          style: TextStyles.body,
        ),
      ],
    ),
  );
}
