import 'package:flutter/material.dart';
import 'package:spotify/pages/search/widgets/checkable_genre/checkable_genre_header.dart';
import 'package:spotify/pages/search/widgets/checkable_genre/checkable_genre_list.dart';

class CheckableGenre extends StatefulWidget {
  const CheckableGenre({super.key});

  @override
  State<CheckableGenre> createState() => _CheckableGenreState();
}

class _CheckableGenreState extends State<CheckableGenre> {
  List<String> _fetchLatestGenreNameList() {
    return [
      'ジャンル1',
      'ジャンル2',
      'ジャンル3',
    ];
  }

  @override
  Widget build(BuildContext context) {
    final genreNameList = _fetchLatestGenreNameList();
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: CheckableGenreHeader(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: CheckableGenreList(),
        )
      ],
    );
  }
}
