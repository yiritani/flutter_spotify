import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';
import 'package:spotify/pages/home/widgets/latest_listened_title/latest_title_card.dart';

class LatestListenedTitle extends StatefulWidget {
  const LatestListenedTitle({super.key});

  @override
  State<LatestListenedTitle> createState() => _LatestListenedTitleState();
}

class _LatestListenedTitleState extends State<LatestListenedTitle> {
  List<AlbumTitle> _fetchLatestTitles() {
    return [
      AlbumTitle(
        artistName: 'アーティスト1',
        title: '最新のタイトル1',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト2',
        title: '最新のタイトル2',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト3',
        title: '最新のタイトル3',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト4',
        title: '最新のタイトル4',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト5',
        title: '最新のタイトル5',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト6',
        title: '最新のタイトル6',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト7',
        title: '最新のタイトル7',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
      AlbumTitle(
        artistName: 'アーティスト8',
        title: '最新のタイトル8',
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final latestTitles = _fetchLatestTitles();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 3.3,
        ),
        itemCount: latestTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return LatestListenedTitleCard(title: latestTitles[index]);
        },
      ),
    );
  }
}
