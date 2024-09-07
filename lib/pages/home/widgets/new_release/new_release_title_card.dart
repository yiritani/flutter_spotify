import 'package:flutter/material.dart';
import 'package:spotify/utils/color.dart';

class NewReleaseTitleCard extends StatefulWidget {
  const NewReleaseTitleCard({super.key, required this.title});
  final Map<String, String> title;

  @override
  State<NewReleaseTitleCard> createState() => _NewReleaseTitleCardState();
}

class _NewReleaseTitleCardState extends State<NewReleaseTitleCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
            child: Image.network(widget.title['imageUrl']!,
                width: 160, height: 160, fit: BoxFit.cover),
          ),
          Expanded(
            child: Container(
              height: 160,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: const BoxDecoration(
                color: UtilColor.secondaryBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.title['title']} - ${widget.title['artistName']}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'New Release',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: UtilColor.secondaryAccentColor,
                            size: 30,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: UtilColor.secondaryAccentColor,
                            size: 40,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
