import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_exam/presentation/home/explore.dart';
import 'package:online_exam/presentation/home/profile.dart';
import 'package:online_exam/presentation/home/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    ExploreScreen(),
    ResultScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildBottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/explore.svg'),
            label: 'Explore',
            isSelected: _selectedIndex == 0,
          ),
          _buildBottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Result.svg'),
            label: 'Result',
            isSelected: _selectedIndex == 1,
          ),
          _buildBottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Profile.svg'),
            label: 'Profile',
            isSelected: _selectedIndex == 2,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF02369C),
        unselectedItemColor: Color(0xFF878787),
        selectedLabelStyle: TextStyle(color: Color(0xFF02369C)),
        unselectedLabelStyle: TextStyle(color: Color(0xFF878787)),
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required Widget icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFCCD7EB) : Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: icon,
      ),
      label: label,
    );
  }
}
