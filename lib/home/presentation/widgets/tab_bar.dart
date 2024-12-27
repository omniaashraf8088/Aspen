import 'package:aspen_travel_app/presentation/widgets/tab_details.dart';
import 'package:flutter/material.dart';


import '../view_model/category_location_model.dart';

class CategoryLocation extends StatelessWidget {
   CategoryLocation({
    super.key,
  });
  final List<TabBarModel>tabBarCategory=[
    TabBarModel(text: 'Location'),
    TabBarModel(text: 'Hotels'),
    TabBarModel(text: 'Food'),
    TabBarModel(text: 'Adventure'),
    TabBarModel(text: 'Adventure'),
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tabBarCategory.length,
          itemBuilder: (context, index) {
            return  TabDetails(tabBarModel:tabBarCategory[index]);
          }),
    );
  }
}