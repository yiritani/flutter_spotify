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
                width: 140, height: 140, fit: BoxFit.cover),
          ),
          Expanded(
            child: Container(
              height: 140,
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
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print('Add icon tapped');
                            },
                            splashColor: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                            child: const Icon(
                              Icons.add_circle_outline,
                              color: UtilColor.secondaryAccentColor,
                              size: 30,
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print('Play icon tapped');
                            },
                            splashColor: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
                            child: const Icon(
                              Icons.play_circle,
                              color: UtilColor.secondaryAccentColor,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ))
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
