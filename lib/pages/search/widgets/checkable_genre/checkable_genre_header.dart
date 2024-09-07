import 'package:flutter/material.dart';

class CheckableGenreHeader extends StatefulWidget {
  const CheckableGenreHeader({super.key});

  @override
  State<CheckableGenreHeader> createState() => _CheckableGenreHeaderState();
}

class _CheckableGenreHeaderState extends State<CheckableGenreHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Text(
        'ジャンルをチェック',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
