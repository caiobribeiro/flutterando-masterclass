import 'package:flutter/material.dart';

class TinderButtom extends StatelessWidget {
  final String text;
  final IconData icon;
  const TinderButtom({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        width: screenWidth * 0.85,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: const BorderRadius.all(Radius.circular(100.0)),
            color: const Color(0x00ffffff)),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
