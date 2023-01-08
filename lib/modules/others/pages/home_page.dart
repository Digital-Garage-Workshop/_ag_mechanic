import 'package:flutter/material.dart';

import '/modules/jobs/index.dart';
import './notifications.dart';
import './settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _items = const <Widget>[
    CalendarPage(),
    NotificationsPage(),
    SettingsPage(),
  ];
  final _menuItems = const <MenuItem>[
    MenuItem(Icons.calendar_month_rounded, "Calendar"),
    MenuItem(Icons.notifications, "Notifications"),
    MenuItem(Icons.settings, "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        index: _index,
        children: _items,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: _menuItems
            .map((item) => BottomNavigationBarItem(
                icon: Icon(item.icon), label: item.label))
            .toList(),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class MenuItem {
  const MenuItem(this.icon, this.label);

  final IconData icon;
  final String label;
}
