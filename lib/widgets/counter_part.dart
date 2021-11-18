import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';

class CounterPart extends StatelessWidget {
  const CounterPart({Key? key, required this.date}) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 23,
      decoration: BoxDecoration(
        color: clr4.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        date,
        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
      ),
    );
  }
}
