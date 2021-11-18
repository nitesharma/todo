import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.clr,
    required this.img,
    required this.icnClr,
    required this.onPressed,
  }) : super(key: key);

  final Color clr;
  final String img;
  final Color icnClr;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: clr3,
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 45,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: clr,
            width: 0.2,
          ),
        ),
        child: Image.network(
          img,
          color: icnClr,
        ),
      ),
    );
  }
}
