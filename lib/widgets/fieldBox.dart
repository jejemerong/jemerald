import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jemerald/pages/home.dart';
import '../utils/colors.dart';

class FieldBox extends StatefulWidget {
  @override
  _FieldBoxUpState createState() => _FieldBoxUpState();
}

class _FieldBoxUpState extends State<FieldBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 90,
      child: Center(child: Text()),
      decoration: BoxDecoration(
        color: ColorStyles.snowWhite,
        borderRadius: BorderRadius.all(Radius.circular(
          23.0,
        )),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(214, 216, 216, 100),
            offset: Offset(
              7,
              7,
            ),
            blurRadius: 13,
          ),
          BoxShadow(
            color: ColorStyles.white,
            offset: Offset(
              -7,
              -7,
            ),
            blurRadius: 13,
          )
        ],
      ),
    );
  }
}

class _FieldBoxDownState extends State<FieldBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 90,
      // child: Center(child: Text()),
      decoration: BoxDecoration(
        color: ColorStyles.snowWhite,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(230, 212, 212, 100),
            Color.fromRGBO(255, 251, 251, 100),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(
          23.0,
        )),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(217, 200, 200, 100),
            offset: Offset(
              -23,
              -23,
            ),
            blurRadius: 45,
          ),
          BoxShadow(
            color: ColorStyles.white,
            offset: Offset(
              -23,
              -23,
            ),
            blurRadius: 45,
          )
        ],
      ),
    );
  }
}
