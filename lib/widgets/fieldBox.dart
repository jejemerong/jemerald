import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jemerald/pages/home.dart';
import 'package:jemerald/widgets/challengeItem.dart';
import '../utils/colors.dart';

final challenges = ['운동', '독서', '일기', '영어'];

class FieldBox extends StatefulWidget {
  FieldBox({required Function onPress});
  @override
  _FieldBoxState createState() => _FieldBoxState();
}

class _FieldBoxState extends State<FieldBox> {
  final List<String> items =
      List.generate(challenges.length, (index) => challenges[index]);
  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO: height 는 ListView 에 포함된 children height 를 모두 포함하는 길이로 설정하도록
      height: 600,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, index) {
            return ChallengeItem(
                challengeName: items[index], isFinished: false);
          }),
    );
  }
}
