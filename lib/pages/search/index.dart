import 'package:flutter/material.dart';
import 'package:spotify/pages/search/widgets/checkable_genre/index.dart';
import 'package:spotify/pages/search/widgets/header.dart';
import 'package:spotify/pages/search/widgets/search_form.dart';
import 'package:spotify/utils/color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UtilColor.mainBackgroundColor,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: SearchHeader(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(height: 50, child: SearchForm()),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: const CheckableGenre())),
          ],
        ),
      ),
    );
  }
}
