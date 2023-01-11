import 'package:book_tickets/src/screens/home_screen.dart';
import 'package:book_tickets/src/screens/search_screen.dart';
import 'package:book_tickets/src/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  /// 하단 내비게이션바 요소 Index
  int _selectedIndex = 0;

  /// 하단 내비게이션바 요소별 나타나는 Widget List
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff526480),
        // 하단 내비게이션바 요소들의 위치를 고정, 공간 동일 배분
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
            ),
            label: 'Home',
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
            ),
            label: 'Search',
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
            ),
            label: 'Ticket',
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            label: 'Profile',
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
            ),
          ),
        ],
      ),
    );
  }
}
