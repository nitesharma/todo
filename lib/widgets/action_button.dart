import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key, required this.icn, required this.onPressed})
      : super(key: key);

  final IconData icn;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appbar,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: appbar.withOpacity(0.3),
            spreadRadius: 8,
            blurRadius: 24,
          ),
        ],
      ),
      child: ClipOval(
        child: Material(
          color: appbar,
          child: InkWell(
            splashColor: clr2,
            onTap: onPressed,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Icon(
                icn,
                size: 26,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
