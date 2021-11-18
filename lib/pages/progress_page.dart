import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/widgets/custom_btn.dart';
import 'package:todo/widgets/my_widgets.dart';

import '../coolers.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppbar2(
            onTap: () {},
            title: '22-10-21',
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: secondry,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: TextWidget(
                          heading: 'All',
                          size: 20,
                          fontColor: (selectedIndex == 0) ? appbar : clr2,
                          fontWeight: (selectedIndex == 0)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: TextWidget(
                          heading: 'Ongoing',
                          size: 20,
                          fontColor: (selectedIndex == 1) ? appbar : clr2,
                          fontWeight: (selectedIndex == 1)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: TextWidget(
                          heading: 'Complete',
                          size: 20,
                          fontColor: (selectedIndex == 2) ? appbar : clr2,
                          fontWeight: (selectedIndex == 2)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        TodayTask(),
                        SizedBox(
                          height: 8,
                        ),
                        TodayTask(),
                        SizedBox(
                          height: 8,
                        ),
                        TodayTask(),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({Key? key, required this.onTap, required this.title})
      : super(key: key);
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    final mheight = MediaQuery.of(context).size.height;
    // final mwidth = MediaQuery.of(context).size.width;
    return Container(
      height: mheight * 0.15,
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
                onPressed: onTap,
                clr: clr2,
                img: 'https://cdn-icons-png.flaticon.com/512/271/271218.png',
                icnClr: clr2,
              ),
              Text(
                title,
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
        ],
      ),
    );
  }
}
