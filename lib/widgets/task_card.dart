import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';

class TaskCArd extends StatelessWidget {
  const TaskCArd(
      {Key? key,
      required this.img,
      required this.taskNo,
      required this.taskTitle})
      : super(key: key);
  final String img;
  final String taskNo;
  final String taskTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        height: 70,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 0.1,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  //color: Colors.blue,
                  // image: DecorationImage(
                  //   image: NetworkImage(img),
                  //   alignment: Alignment.center,
                  //   fit: BoxFit.contain,
                  // ),
                  ),
              child: Image.network(
                img,
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taskTitle,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: appbar),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(taskNo,
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
