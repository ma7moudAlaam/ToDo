import 'package:flutter/material.dart';
import 'package:todo/layout/home_layout/widgets/bottom_Sheet_Widget.dart';
import 'package:todo/pages/home_view/home_view.dart';
import 'package:todo/pages/settings_view/settings_view.dart';

class HomeLayoutView extends StatefulWidget {
  HomeLayoutView({super.key});

  static String routeName = "home";

  @override
  State<HomeLayoutView> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<HomeLayoutView> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 32,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 28,
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              addNewTask(context);
            },
            backgroundColor: theme.colorScheme.primary,
            child: const Icon(
              Icons.add,
              size: 28,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      body: screens[selectedIndex],
      backgroundColor: theme.colorScheme.background,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: "home",
                  icon: ImageIcon(AssetImage(
                    "assets/images/Home icon.png",
                  ))),
              BottomNavigationBarItem(
                  label: "settings",
                  icon:
                      ImageIcon(AssetImage("assets/images/Settings icon.png")))
            ]),
      ),
    );
  }

  void addNewTask(context) {
    showModalBottomSheet(

      context: context,
      builder: (context) =>  BottomSheetWidegt(),
    );
  }
}
