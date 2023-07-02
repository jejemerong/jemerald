import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/colors.dart';

class Header extends StatelessWidget {
  DateTime now = new DateTime.now();
  String formattedDate = DateFormat('yy.MM.dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('$formattedDate',
                style: TextStyle(
                  color: ColorStyles.black,
                  fontFamily: 'Cute_KR',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        SizedBox(
          width: 11,
        ),
        Image(
          image: AssetImage('assets/images/logo_image.png'),
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 11,
        ),
        Image(
          image: AssetImage('assets/images/logo_text.png'),
          width: 115,
          height: 55,
        )
      ],
    );
  }
}
