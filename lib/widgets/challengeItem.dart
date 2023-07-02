import 'package:flutter/material.dart';
import 'package:jemerald/constants/colors.dart';

class ChallengeItem extends StatefulWidget {
  final String challengeName;
  final bool isFinished;
  ChallengeItem({required this.challengeName, required this.isFinished});
  @override
  _ChallengeItemState createState() => _ChallengeItemState();
}

class _ChallengeItemState extends State<ChallengeItem> {
  final isFinished = 'before';
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 250,
        height: 90,
        // child: Center(child: Text(widget.challenges)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.challengeName),
            Image(
              image: AssetImage(
                  'assets/images/${isFinished}${widget.challengeName}.png'),
              width: 80,
              height: 80,
            )
          ],
        ),
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
