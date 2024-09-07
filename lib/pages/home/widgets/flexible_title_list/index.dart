import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';
import 'package:spotify/pages/home/widgets/flexible_title_list/flexible_title_list_header.dart';
import 'package:spotify/pages/home/widgets/flexible_title_list/flexible_title_list_horizontal.dart';

class FlexibleTitleList extends StatefulWidget {
  const FlexibleTitleList({super.key, required this.headerTitle});
  final String headerTitle;

  @override
  State<FlexibleTitleList> createState() => _FlexibleTitleListState();
}

class _FlexibleTitleListState extends State<FlexibleTitleList> {
  List<AlbumTitle> _fetchRecentTitles() {
    return [
      AlbumTitle(
        artistName: '最新のアーティスト1',
        title: '最新のタイトル1',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト2',
        title: '最新のタイトル2',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト3',
        title: '最新のタイトル3',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト4',
        title: '最新のタイトル4',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト5',
        title: '最新のタイトル5',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト6',
        title: '最新のタイトル6',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト7',
        title: '最新のタイトル7',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト8',
        title: '最新のタイトル8',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト9',
        title: '最新のタイトル9',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: '最新のアーティスト10',
        title: '最新のタイトル10',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
    ];
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
