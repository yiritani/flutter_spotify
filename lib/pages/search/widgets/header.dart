import 'package:flutter/material.dart';
import 'package:spotify/utils/color.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: UtilColor.accentColor,
          child: Text('A'),
        ),
        SizedBox(width: 14),
        Text('検索',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ],
    );
  }
}
