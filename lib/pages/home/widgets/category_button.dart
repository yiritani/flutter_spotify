import 'package:flutter/material.dart';
import 'package:spotify/utils/color.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  int _selectedCategoryIndex = 0;
  void _onCategoryTapped(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _categoryButton('すべて', 1),
        const SizedBox(width: 8),
        _categoryButton('音楽', 2),
        const SizedBox(width: 8),
        _categoryButton('ポッドキャスト', 3),
      ],
    );
  }

  Widget _categoryButton(String text, int index) {
    return ElevatedButton(
      onPressed: () {
        _onCategoryTapped(index);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: _selectedCategoryIndex == index
            ? UtilColor.accentColor
            : UtilColor.secondaryBackgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: _selectedCategoryIndex == index ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
