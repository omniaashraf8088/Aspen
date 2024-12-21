import 'package:flutter/material.dart';

import '../../utils/app_text.dart';
import '../view_model/category_location_model.dart';

class TabDetails extends StatelessWidget {
  const TabDetails({super.key, required this.tabBarModel});

  final TabBarModel tabBarModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        tabBarModel.text,
        style: AppText.font12,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[120],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
