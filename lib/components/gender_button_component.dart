import 'package:flutter/material.dart';

class GenderButtonComponent extends StatelessWidget {
  final dynamic onTap;
  final Color bgColor;
  final IconData buttonIcon;
  final String title;

  const GenderButtonComponent({
    required this.title,
    required this.onTap,
    required this.bgColor,
    required this.buttonIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: bgColor,
        ),
        child: Column(
          children: [
            Icon(
              buttonIcon,
              color: Colors.white,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
