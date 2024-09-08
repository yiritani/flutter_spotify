import 'package:flutter/material.dart';
import 'package:spotify/utils/color.dart';

class MyLibraryHeader extends StatefulWidget {
  const MyLibraryHeader({super.key});

  @override
  State<MyLibraryHeader> createState() => _MyLibraryHeaderState();
}

class _MyLibraryHeaderState extends State<MyLibraryHeader> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(children: [
        CircleAvatar(
          backgroundColor: UtilColor.accentColor,
          child: Text('A'),
        ),
        SizedBox(width: 8),
        Text('マイライブラリ',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Spacer(),
        Icon(Icons.search, color: Colors.white),
        SizedBox(width: 8),
        Icon(Icons.add, color: Colors.white),
      ]),
    );
  }
}
