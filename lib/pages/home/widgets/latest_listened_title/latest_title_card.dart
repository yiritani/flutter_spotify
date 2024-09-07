import 'package:flutter/material.dart';
import 'package:spotify/utils/color.dart';

class LatestListenedTitleCard extends StatefulWidget {
  const LatestListenedTitleCard({super.key, required this.title});
  final title;

  @override
  State<LatestListenedTitleCard> createState() =>
      _LatestListenedTitleCardState();
}

class _LatestListenedTitleCardState extends State<LatestListenedTitleCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            bottomLeft: Radius.circular(4),
          ),
          child: Image(
            image: NetworkImage(widget.title['imageUrl']!),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 51,
          width: 125,
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
                widget.title['title']!,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
