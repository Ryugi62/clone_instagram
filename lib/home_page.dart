import 'package:clone_instagram/screens/feed_screen.dart';
import 'package:clone_instagram/screens/profile_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> btnNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.healing), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.tab), label: ""),
  ];

  static List<Widget> screens = <Widget>[
    FeedScreen(),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.deepPurpleAccent,
    ),
    ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: btnNavItems,
        showSelectedLabels: false,
        selectedItemColor: Colors.black87,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: _onBottomItemClick,
      ),
    );
  }

  void _onBottomItemClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
