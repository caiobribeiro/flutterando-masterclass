import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textContent;
  final Image? imageContent;
  final Color buttonColor;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.textContent,
    required this.buttonColor,
    required this.textColor,
    this.imageContent,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        width: screenWidth * 0.9,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            color: buttonColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: imageContent,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              textContent,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
