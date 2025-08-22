import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title; // dynamic text (e.g., "Deutsch", "Animals")
  final bool showFlagAndHello; // control display of flag + "Hello"

  const AppBarWidget({
    super.key,
    required this.title,
    this.showFlagAndHello = true, // default: show them
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A8E82), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      title: Row(
        children: [
          if (showFlagAndHello) ...[
            Image.asset(
              'assets/images/app_icons/flag.png',
              width: 32,
              height: 24,
            ),
            const SizedBox(width: 8),
          ],
          Text.rich(
            TextSpan(
              children: [
                if (showFlagAndHello)
                  const TextSpan(
                    text: "Hello ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
