import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/colors.dart';
import '../widgets/fieldBox.dart';

class App extends StatelessWidget {
  DateTime now = new DateTime.now();
  String formattedDate = DateFormat('yy.MM.dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ColorStyles.snowWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: ColorStyles.black,
                            fontFamily: 'Cute_KR',
                            fontSize: 30,
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
                    width: 13,
                  ),
                  Image(
                    image: AssetImage('assets/images/logo_text.png'),
                    width: 115,
                    height: 55,
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),

              // TODO: 리스트 뷰 사용하기
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FieldBox(),
                  SizedBox(
                    height: 20,
                  ),
                  FieldBox(),
                  SizedBox(
                    height: 20,
                  ),
                  FieldBox(),
                  SizedBox(
                    height: 20,
                  ),
                  FieldBox(),
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ListView.builder(
              //       itemCount: 4,
              //       itemBuilder: ((context, index) {
              //         return Column(
              //           children: [
              //             FieldBox(),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             FieldBox(),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             FieldBox(),
              //           ],
              //         );
              //       }),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
