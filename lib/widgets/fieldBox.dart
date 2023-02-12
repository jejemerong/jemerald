import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FieldBox extends StatefulWidget {
  @override
  _FieldBoxState createState() => _FieldBoxState();
}

class _FieldBoxState extends State<FieldBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(color: ColorStyles.babyPurple),
    );
  }
}
