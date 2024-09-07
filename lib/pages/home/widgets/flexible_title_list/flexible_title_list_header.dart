import 'package:flutter/material.dart';

class FlexibleTitleListHeader extends StatelessWidget {
  const FlexibleTitleListHeader({super.key, required this.headerTitle});
  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        headerTitle,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
