import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trogonmachintest/utilis/responsive.dart';
import 'package:trogonmachintest/widgets/custom_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.book,
    Icons.analytics,
    Icons.person,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(220.0),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
          child: CustomAppBar(),
        ),
      ),
      body: Center(
        child: Text(
          "Selected Page: $_selectedIndex",
          style: TextStyle(
            fontSize: responsive.sp(18), 
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF673AB7),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          Icons.emoji_events,
          size: responsive.sp(35),
          color: Colors.orange,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: _selectedIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            activeColor: const Color(0xFF673AB7),
            inactiveColor: Colors.grey,
            splashColor: const Color(0xFF7E57C2),
          ),
        ),
      ),
    );
  }
}
