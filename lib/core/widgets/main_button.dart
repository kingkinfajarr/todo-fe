import 'package:flutter/material.dart';
import 'package:todo_fe/core/constants/app_theme.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppTheme.primaryColor),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
