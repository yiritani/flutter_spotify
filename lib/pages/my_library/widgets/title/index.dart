import 'package:flutter/material.dart';
import 'package:spotify/pages/my_library/widgets/title/list.dart';
import 'package:spotify/utils/dummy_data.dart';

class TitleList extends StatefulWidget {
  const TitleList({super.key});

  @override
  State<TitleList> createState() => _TitleListState();
}

enum LayoutType { list, grid }

class _TitleListState extends State<TitleList> {
  LayoutType _layoutType = LayoutType.list;
  void changeLayout() {
    setState(() {
      _layoutType =
          _layoutType == LayoutType.list ? LayoutType.grid : LayoutType.list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TitleListView(
      albumTitles: DummyData['AlbumTitle'],
    );
  }
}
