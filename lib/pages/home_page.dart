import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/widgets/counter_part.dart';
import 'package:todo/widgets/custom_btn.dart';
import 'package:todo/widgets/my_widgets.dart';
import 'package:todo/widgets/task_card.dart';

import '../coolers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppbar(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 25.0),
              //height: 550,
              // width: double.infinity,
              decoration: const BoxDecoration(
                color: secondry,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      TaskCArd(
                        img:
                            'https://cdn-icons-png.flaticon.com/512/3214/3214721.png',
                        taskNo: '14 Tasks',
                        taskTitle: 'Ongoing',
                      ),
                      TaskCArd(
                        img:
                            'https://cdn-icons-png.flaticon.com/512/3372/3372514.png',
                        taskNo: '12 Tasks',
                        taskTitle: 'Process',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TaskCArd(
                        img:
                            'https://cdn-icons-png.flaticon.com/512/753/753318.png',
                        taskNo: '20 Tasks',
                        taskTitle: 'Complete',
                      ),
                      TaskCArd(
                        img:
                            'https://cdn-icons-png.flaticon.com/512/399/399274.png',
                        taskNo: '6 Tasks',
                        taskTitle: 'Cancel',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 18,
                            color: clr2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TodayTask(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    // final mwidth = MediaQuery.of(context).size.width;
    return Container(
      height: mheight * 0.25,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      color: appbar,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBtn(
                onPressed: () {},
                clr: clr2,
                img: 'https://cdn-icons-png.flaticon.com/512/2948/2948037.png',
                icnClr: clr2,
              ),
              Text(
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                style: TextStyle(color: clr2, fontSize: 20),
              ),
              Container(
                decoration: BoxDecoration(
                  color: clr2.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bell_fill,
                      color: clr1,
                      size: 20,
                    )),
              )
            ],
          ),
          SizedBox(
            height: mheight * 0.025,
          ),
          const Text(
            'Hey Nitesh!',
            style: TextStyle(
              color: clr2,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Manage Your Task",
            style: TextStyle(
              color: clr2,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class TodayTask extends StatelessWidget {
  const TodayTask({Key? key}) : super(key: key);
  final progress = 0.7;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
      child: Container(
        //height: 70,
        decoration: BoxDecoration(
          //color: clr3,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //
                  TextWidget(
                    heading: 'Medical Dashboard UI',
                    size: 20,
                    fontColor: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  Text(
                    '7-15 Nov',
                    style: TextStyle(
                      fontSize: 16,
                      color: clr2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CounterPart(
                            date: '0',
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          CounterPart(
                            date: '0',
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            ':',
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          CounterPart(date: '1'),
                          SizedBox(
                            width: 6,
                          ),
                          CounterPart(date: '3'),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            ':',
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          CounterPart(date: '0'),
                          SizedBox(
                            width: 6,
                          ),
                          CounterPart(date: '8'),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            ':',
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          CounterPart(date: '1'),
                          SizedBox(
                            width: 6,
                          ),
                          CounterPart(date: '9')
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Day',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Hour',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Minute',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Second',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: progress,
                          color: appbar,
                          strokeWidth: 6,
                          backgroundColor: clr2.withOpacity(0.2),
                        ),
                        Center(
                          child: Text('${(progress * 100).toInt()} %'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
