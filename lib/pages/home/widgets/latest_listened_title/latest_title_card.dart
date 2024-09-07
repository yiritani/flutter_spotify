import 'package:flutter/material.dart';
import 'package:spotify/models/AlbumTitle.dart';
import 'package:spotify/utils/color.dart';

class LatestListenedTitleCard extends StatefulWidget {
  const LatestListenedTitleCard({super.key, required this.title});
  final AlbumTitle title;

  @override
  State<LatestListenedTitleCard> createState() =>
      _LatestListenedTitleCardState();
}

class _LatestListenedTitleCardState extends State<LatestListenedTitleCard> {
  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print(widget.title);
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
                child: Image(
                  image: NetworkImage(title.imageUrl),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  height: 51,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: const BoxDecoration(
                    color: UtilColor.secondaryBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
