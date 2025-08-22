import 'package:flutter/material.dart';
import 'package:hello_deutsch/screens/home_screen.dart';

// SplashScreen -> StatefulWidget -> changes because it waits a few seconds then navigates.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // special method called once when the widget is first created.
  void initState() {
    // calls the parent class’s initState (always required).
    super.initState();
    // Delay navigation after first frame is built
    Future.delayed(Duration(seconds: 3), () {
      //mounted -> يعني لو لسه موجود و مقفلتش البرنامج ده قبل 3 ثوانسي اتحرك ع اللي بعده
      // prevents errors if user closes app before navigation
      if (mounted) {
        // pushReplacement -> replaces the current screen with a new one.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6e0b5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/app_icons/flag.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              "Hello Deutsch",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
