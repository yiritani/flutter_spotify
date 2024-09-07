import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';

class FlexibleTitleListHorizontal extends StatefulWidget {
  const FlexibleTitleListHorizontal({super.key, required this.titles});
  final List<AlbumTitle> titles;

  @override
  State<FlexibleTitleListHorizontal> createState() =>
      _FlexibleTitleListHorizontalState();
}

class _FlexibleTitleListHorizontalState
    extends State<FlexibleTitleListHorizontal> {
  @override
  Widget build(BuildContext context) {
    final titles = widget.titles;
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start, // 全体を左寄せに
            children: [
              Container(
                width: 150,
                height: 150,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image(
                  image: NetworkImage(titles[index].imageUrl),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // テキストを左寄せに
                children: [
                  Text(
                    titles[index].artistName,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    titles[index].title,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
