import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';
import 'package:spotify/pages/home/widgets/flexible_title_list/flexible_title_list_header.dart';
import 'package:spotify/pages/home/widgets/flexible_title_list/flexible_title_list_horizontal.dart';
import 'package:spotify/utils/dummy_data.dart';

class FlexibleTitleList extends StatefulWidget {
  const FlexibleTitleList({super.key, required this.headerTitle});
  final String headerTitle;

  @override
  State<FlexibleTitleList> createState() => _FlexibleTitleListState();
}

class _FlexibleTitleListState extends State<FlexibleTitleList> {
  List<AlbumTitle> _fetchRecentTitles() {
    return DummyData['AlbumTitle'];
  }

  @override
  Widget build(BuildContext context) {
    final titles = _fetchRecentTitles();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: FlexibleTitleListHeader(headerTitle: widget.headerTitle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: FlexibleTitleListHorizontal(titles: titles),
        ),
      ],
    );
  }
}
