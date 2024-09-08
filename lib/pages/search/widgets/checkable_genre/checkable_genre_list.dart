import 'package:flutter/material.dart';

class CheckableGenreList extends StatefulWidget {
  const CheckableGenreList({super.key});

  @override
  State<CheckableGenreList> createState() => _CheckableGenreListState();
}

class _CheckableGenreListState extends State<CheckableGenreList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 3.3,
            ),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 150,
                child: Container(
                  color: Colors.white,
                  child: Image.network(
                    'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO02QA81-default.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }));
  }
}
