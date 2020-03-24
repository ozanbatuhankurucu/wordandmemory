import 'package:flutter/material.dart';
import '../constants.dart';

class IconTextField extends StatelessWidget {
  final IconData icon;
  IconTextField({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Icon(
        icon,
        color: kIconColor,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: kTextFieldBorderSide,
          right: kTextFieldBorderSide,
        ),
      ),
    );
  }
}
