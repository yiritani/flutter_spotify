import 'package:flutter/material.dart';
import 'package:spotify/pages/my_library/header.dart';
import 'package:spotify/pages/my_library/widgets/category_button.dart';
import 'package:spotify/pages/my_library/widgets/layout_changer.dart';
import 'package:spotify/pages/my_library/widgets/title/index.dart';
import 'package:spotify/utils/color.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({super.key});

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: UtilColor.mainBackgroundColor,
            body: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: MyLibraryHeader(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: CategoryButton(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: LayoutChanger(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: TitleList(),
                    ),
                  ),
                ],
              ),
            )));
  }
}
