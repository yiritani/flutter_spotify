import 'package:flutter/material.dart';
import 'package:spotify/pages/home/widgets/new_release/new_release_header.dart';
import 'package:spotify/pages/home/widgets/new_release/new_release_title_card.dart';
import 'package:spotify/utils/color.dart';

class NewRelease extends StatefulWidget {
  const NewRelease({super.key});

  @override
  State<NewRelease> createState() => _NewReleaseState();
}

class _NewReleaseState extends State<NewRelease> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: UtilColor.mainBackgroundColor,
      body: Column(
        children: [
          NewReleaseHeader(title: {
            'artistName': 'Queen',
            'imageUrl':
                'https://plus.unsplash.com/premium_photo-1695792938224-4fd327c05097?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cXVlZW58ZW58MHx8MHx8fDA%3D',
          }),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NewReleaseTitleCard(title: {
              'artistName': 'Queen',
              'title': 'We will rock you',
              'imageUrl':
                  'https://plus.unsplash.com/premium_photo-1695792938224-4fd327c05097?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cXVlZW58ZW58MHx8MHx8fDA%3D',
            }),
          ),
        ],
      ),
    );
  }
}
