import 'package:flutter/material.dart';
import 'package:spotify/pages/home/widgets/category_button.dart';
import 'package:spotify/pages/home/widgets/flexible_title_list/index.dart';
import 'package:spotify/pages/home/widgets/latest_listened_title/index.dart';
import 'package:spotify/pages/home/widgets/new_release/index.dart';
import 'package:spotify/utils/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: UtilColor.mainBackgroundColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: UtilColor.accentColor,
                    child: Text('A'),
                  ),
                  SizedBox(width: 14),
                  CategoryButton(),
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 240,
                        child: LatestListenedTitle(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 240,
                        child: NewRelease(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: SizedBox(
                        height: 316,
                        child: FlexibleTitleList(headerTitle: 'あなたにおすすめのアルバム'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: SizedBox(
                        height: 316,
                        child: FlexibleTitleList(headerTitle: 'ちょっと前のお気に入り'),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                          height: 316,
                          child: FlexibleTitleList(headerTitle: '最近追加したアルバム'),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
