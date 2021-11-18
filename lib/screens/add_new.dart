import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';
import 'package:todo/widgets/custom_btn.dart';
import 'package:todo/widgets/my_widgets.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController titlecontroller = TextEditingController();

  final TextEditingController taskController = TextEditingController();

  DatabaseReference databaseRef = FirebaseDatabase.instance.reference();

  void addTask(String title, String task) {
    databaseRef.child('Tasks').set({'title': title, 'tasks': task});
  }

  @override
  void dispose() {
    super.dispose();
    titlecontroller.dispose();
    taskController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.network(
          'https://cdn-icons-png.flaticon.com/512/839/839860.png',
          height: 40,
          color: clr2,
        ),
        centerTitle: true,
        backgroundColor: appbar,
        elevation: 0.0,
        // leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CustomBtn(
            clr: clr2,
            img: 'https://cdn-icons-png.flaticon.com/512/271/271218.png',
            icnClr: clr2,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: InkWell(
                onTap: () {
                  if (titlecontroller.text.isNotEmpty ||
                      taskController.text.isNotEmpty) {
                    addTask(
                      titlecontroller.text,
                      taskController.text,
                    );
                  }
                },
                child: TextWidget(
                    heading: 'save',
                    size: 20,
                    fontColor: clr2,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 12.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                // cursorHeight: 30,
                style: TextStyle(
                  fontSize: 30,
                ),
                decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.8,
                      color: appbar),
                  //
                  // border: OutlineInputBorder(
                  //     // borderRadius: BorderRadius.circular(20),

                  //     ),
                  border: InputBorder.none,
                ),
                controller: titlecontroller,
              ),
              Divider(
                color: Colors.black,
                height: 10,
              ),
              TextField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add tasks',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
                controller: taskController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
