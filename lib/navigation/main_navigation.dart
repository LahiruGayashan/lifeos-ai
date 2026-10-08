import 'package:flutter/material.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/goals/goals_screen.dart';
import '../features/ai/ai_screen.dart';
import '../features/profile/profile_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const DashboardScreen(),
    const GoalsScreen(),
    const AiScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF07162E),
        selectedItemColor: const Color(0xFF3B82F6),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag_rounded),
            label: "Goals",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_rounded),
            label: "AI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}