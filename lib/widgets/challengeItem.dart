import 'package:flutter/material.dart';
import 'package:jemerald/utils/colors.dart';

class ChallengeItem extends StatefulWidget {
  final String challenges;
  ChallengeItem({required this.challenges});
  @override
  _ChallengeItemState createState() => _ChallengeItemState();
}

class _ChallengeItemState extends State<ChallengeItem> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 250,
        height: 90,
        child: Center(child: Text(widget.challenges)),
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
      ),
      // TODO: sizedBox 는 처음에 포함되지 않게
      SizedBox(
        height: 30,
      )
    ]);
  }
}
