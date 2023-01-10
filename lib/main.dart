import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// starting point
class App extends StatelessWidget {
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
                        Text('23.01.10',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w500)),
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
                              width: 70,
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
