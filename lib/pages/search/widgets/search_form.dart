import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: '何を聞きたいですか',
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        border: OutlineInputBorder(),
        filled: true, // 背景を塗りつぶす
        fillColor: Colors.white, // 背景色を白に設定
        prefixIcon: Icon(Icons.search), // leadingアイコンを設定
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
