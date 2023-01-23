import 'package:flutter/material.dart';

class Checkbox extends StatelessWidget {
  const Checkbox({
    // TODO: key =>
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(4)),
    );
  }
}
