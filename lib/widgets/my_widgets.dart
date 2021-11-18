import 'package:flutter/widgets.dart';

// Widget textWidget(String txt, double size, FontWeight weight, Color fontColor) {
//   return Text(
//     txt,
//     style: TextStyle(
//       fontSize: size,
//       fontWeight: weight,
//       color: fontColor,
//     ),
//   );
// }
class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.heading,
      required this.size,
      required this.fontColor,
      required this.fontWeight})
      : super(key: key);
  final String heading;
  final double size;
  final Color fontColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
