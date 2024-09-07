import 'package:flutter/material.dart';

class NewReleaseHeader extends StatefulWidget {
  const NewReleaseHeader({super.key, required this.title});
  final title;

  @override
  State<NewReleaseHeader> createState() => _NewReleaseHeaderState();
}

class _NewReleaseHeaderState extends State<NewReleaseHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            widget.title['imageUrl'],
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title['artistName'],
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
            ],
          ),
        ),
      ],
    );
  }
}
