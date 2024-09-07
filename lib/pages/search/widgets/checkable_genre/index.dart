import 'package:flutter/material.dart';
import 'package:spotify/pages/search/widgets/checkable_genre/checkable_genre_card.dart';

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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 3.3,
      ),
      itemCount: genreNameList.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 150,
          child: CheckableGenreCard(
            genreName: genreNameList[index],
          ),
        );
      },
    );
  }
}
