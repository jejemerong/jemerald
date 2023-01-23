import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(App());
}

// TODO: 챌린지 컨테이너 재사용하기!!!
class ChallengeContainer {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('운동'),
        SizedBox(
          width: 70,
        ),
        Text(
          '스쿼트',
        )
      ],
    );
  }
}

// class CheckBox {
//   Widget build(BuildContext context) {
//     return Container(
//       height: 20,
//       width: 20,
//       decoration: BoxDecoration(
//           color: Colors.black, borderRadius: BorderRadius.circular(4)),
//     );
//   }
// }

// starting point
class App extends StatelessWidget {
  final now = new DateTime.now();
  String formattedDate = DateFormat('yy.MM.dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 217, 217),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('$formattedDate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('운동'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('스쿼트'),
                            SizedBox(
                              width: 10,
                            ),
                            // TODO: 재사용 위젯으로 만들기!
                            // Checkbox(),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('책 읽기'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('트랜서핑'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('일기 쓰기'),
                            SizedBox(
                              width: 50,
                            ),
                            Text('소소노트 완료!'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('명상'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('호흡법 5'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('영어'),
                            SizedBox(
                              width: 70,
                            ),
                            Text('redkiwi 20'),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
