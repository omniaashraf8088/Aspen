import 'package:flutter/cupertino.dart';

import 'category_explore.dart';

class CategoryListExplore extends StatelessWidget {
  const CategoryListExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, value) {
        return CategoryExplore();
      },
      itemCount: 8,




      ),
    );
  }
}
