import 'package:flutter/material.dart';
import 'package:to_do/app_colors.dart';
import 'package:to_do/home/settings/setting_tab.dart';
import 'package:to_do/home/task_list/add_task_bottom_sheet.dart';
import 'package:to_do/home/task_list/task_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To Do List',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        // toolbarHeight: MediaQuery.of(context).size.height*0.18,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List Task',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/setting-icon.png'),
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddTaskBottomSheet();
        },
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Container(
            color: AppColor.primaryColor,
            width: double.infinity,
            height: 80,
          ),
          // Expanded(child: selectedIndex == 0 ? TaskListTab() : SettingTab()),
          Expanded(child: tabs[selectedIndex]),
        ],
      ),
    );
  }

  List<Widget> tabs = [TaskListTab(), SettingTab()];

  void showAddTaskBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => AddTaskBottomSheet(),
    );
  }
}
