import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/coolers.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/message_page.dart';
import 'package:todo/pages/profile_page.dart';
import 'package:todo/pages/progress_page.dart';
import 'package:todo/screens/add_new.dart';
import 'package:todo/widgets/action_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = [
    HomePage(),
    MesagePage(),
    ProgressPage(),
    ProfilePage(),
  ];

  void onNavigation(int index) {
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbar,
      body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          }),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: onNavigation,
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({Key? key, required this.onItemSelected})
      : super(key: key);
  final ValueChanged<int> onItemSelected;

  @override
  __BottomNavigationBarState createState() => __BottomNavigationBarState();
}

class __BottomNavigationBarState extends State<_BottomNavigationBar> {
  int selectedIndex = 2;
  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
            index: 0,
            isSelected: (selectedIndex == 0),
            onTap: handleItemSelected,
            icn: Icon(EvaIcons.home),
          ),
          _NavigationBarItem(
            index: 1,
            isSelected: (selectedIndex == 1),
            onTap: handleItemSelected,
            icn: Icon(EvaIcons.messageCircle),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: ActionButton(
              icn: Icons.add,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddTaskScreen(),
                ));
              },
            ),
          ),
          _NavigationBarItem(
            index: 2,
            isSelected: (selectedIndex == 2),
            onTap: handleItemSelected,
            icn: Icon(CupertinoIcons.chart_bar_square_fill),
          ),
          _NavigationBarItem(
            index: 3,
            isSelected: (selectedIndex == 3),
            onTap: handleItemSelected,
            icn: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem(
      {Key? key,
      required this.icn,
      required this.isSelected,
      required this.onTap,
      required this.index})
      : super(key: key);
  final Icon icn;
  final bool isSelected;
  final ValueChanged<int> onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: icn,
      color: isSelected ? appbar : clr2,
      onPressed: () {
        onTap(index);
      },
    );
  }
}
