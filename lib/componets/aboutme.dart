// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lebohang_sedoaba/utils/fonts.dart';
import 'package:lebohang_sedoaba/utils/text_styles.dart';
import 'package:lebohang_sedoaba/utils/responsive_wiget.dart';
import 'package:lebohang_sedoaba/utils/strings.dart';

class AboutMe extends StatelessWidget {
  const AboutMe(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: Strings.about,
            style: TextStyles.heading.copyWith(
              fontFamily: Fonts.nexa_light,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
          TextSpan(
            text: Strings.me,
            style: TextStyles.heading.copyWith(
              color: Color(0xFF50AFC0),
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 36 : 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
