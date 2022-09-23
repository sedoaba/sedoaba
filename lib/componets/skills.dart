// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lebohang_sedoaba/utils/text_styles.dart';
import 'package:lebohang_sedoaba/utils/responsive_wiget.dart';
import 'package:lebohang_sedoaba/utils/strings.dart';

final skills = [
  'C#',
  '.NET',
  'Xamarin',
  'Dart',
  'Flutter',
  'Java',
  'Android',
  'Firebase',
  'Angular',
  'Javascript',
  'MSQL',
];

class Skills extends StatelessWidget {
  const Skills(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = skills
        .map((skill) => Padding(
              padding: EdgeInsets.only(right: 8.0, bottom: 4.0),
              child: _buildSkillChip(context, skill),
            ))
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSkillsContainerHeading(),
        Wrap(children: widgets),
      ],
    );
  }
}

Widget _buildSkillsContainerHeading() {
  return Text(
    Strings.skills_i_have,
    style: TextStyles.sub_heading,
  );
}

Widget _buildSkillChip(BuildContext context, String label) {
  return Chip(
    label: Text(
      label,
      style: TextStyles.chip.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 11.0,
      ),
    ),
  );
}
