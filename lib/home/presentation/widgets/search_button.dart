import 'package:flutter/material.dart';

import '../../utils/app_text.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(top: 10, bottom: 10, start: 16, end: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF3F8FE),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: 'Find things to do',
          hintStyle: AppText.font13,
          prefixIcon: ImageIcon(
            AssetImage(
              'assets/images/icons/Search.png',
            ),
          ),
        ),
      ),
    );
  }
}
