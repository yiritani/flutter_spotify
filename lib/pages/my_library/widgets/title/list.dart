import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';

class TitleListView extends StatefulWidget {
  const TitleListView({super.key, required this.albumTitles});
  final List<AlbumTitle> albumTitles;

  @override
  State<TitleListView> createState() => _TitleListViewState();
}

class _TitleListViewState extends State<TitleListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.albumTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.albumTitles[index].imageUrl),
            ),
            title: Text(widget.albumTitles[index].title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            subtitle: const Text('プレイリスト',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
          );
        });
  }
}
