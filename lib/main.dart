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
          backgroundColor: Colors.redAccent,
          body: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hey, Jemerald',
                        style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      Text('Good Night~!'),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
