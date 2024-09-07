import 'package:flutter/material.dart';

class CheckableGenreCard extends StatefulWidget {
  const CheckableGenreCard({super.key, required this.genreName});
  final String genreName;

  @override
  State<CheckableGenreCard> createState() => _CheckableGenreCardState();
}

class _CheckableGenreCardState extends State<CheckableGenreCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network(
        'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
