// ignore_for_file: avoid_web_libraries_in_flutter, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lebohang_sedoaba/utils/assets.dart';
import 'package:lebohang_sedoaba/utils/responsive_wiget.dart';
import 'package:lebohang_sedoaba/utils/strings.dart';
import 'package:lebohang_sedoaba/utils/text_styles.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  const Footer(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                child: _buildCopyRightText(context),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: _buildSocialIcons(),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildCopyRightText(BuildContext context) {
  return Text(
    Strings.rights_reserved,
    style: TextStyles.body1.copyWith(
      fontSize: ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
    ),
  );
}

Widget _buildSocialIcons() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          html.window.open(
              "https://www.linkedin.com/in/lebohang-sedoaba-990819a1",
              "LinkedIn");
        },
        child: Image.network(
          Assets.linkedin,
          color: Color(0xFF45405B),
          height: 20.0,
          width: 20.0,
        ),
      ),
      SizedBox(width: 16.0),
      GestureDetector(
        onTap: () {
          html.window.open("mailto:lebza.sedoaba@gmail.com.com", "Email");
        },
        child: Image.network(
          Assets.mail,
          color: Color(0xFF45405B),
          height: 20.0,
          width: 20.0,
        ),
      ),
      SizedBox(width: 16.0),
      GestureDetector(
        onTap: () {
          html.window.open("https://github.com/sedoaba", "Github");
        },
        child: Image.network(
          Assets.github,
          color: Color(0xFF45405B),
          height: 20.0,
          width: 20.0,
        ),
      ),
    ],
  );
}
