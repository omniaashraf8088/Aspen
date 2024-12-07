import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF3F8FE),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24)),
          hintText: ('Find Things To Do'),
          prefixIcon: const Icon(Icons.search),

        ),),
    );
  }
}
