import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/ai_chat_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Screens/scan_crop_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
  switch (index) {
    case 0:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
      break;

    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AiChatScreen(),
        ),
      );
      break;

    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ScanCropScreen(),
        ),
      );
      break;

    case 3:
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Alerts coming soon"),
        ),
      );
      break;

    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        ),
      );
      break;
  }
},
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 8,

      selectedItemColor: const Color(0xff2E7D32),
      unselectedItemColor: Colors.black54,

      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),

      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
      ),

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.smart_toy_outlined),
          activeIcon: Icon(Icons.smart_toy),
          label: "AI Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.center_focus_strong),
          activeIcon: Icon(Icons.center_focus_strong),
          label: "Scan",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none),
          activeIcon: Icon(Icons.notifications),
          label: "Alerts",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}