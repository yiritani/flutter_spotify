import 'package:flutter/material.dart';

class LayoutChanger extends StatefulWidget {
  const LayoutChanger({super.key});

  @override
  State<LayoutChanger> createState() => _LayoutChangerState();
}

class _LayoutChangerState extends State<LayoutChanger> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Icon(Icons.swap_vert, color: Colors.white),
          SizedBox(width: 8),
          Text(
            '最近',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.grid_view, color: Colors.white),
        ],
      ),
    );
  }
}
