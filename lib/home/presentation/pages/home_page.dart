import 'package:flutter/material.dart';
import '../../utils/app_text.dart';
import '../widgets/button_navigation_bar.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/category_list_explore.dart';
import '../widgets/tab_bar.dart';
import '../widgets/label_explore.dart';
import '../widgets/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const LabelExplore(),
        toolbarHeight: 42.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Aspen',
                style: AppText.font32,
              ),
            ),
          ),
          SearchButton(),
          CategoryLocation(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'montserrat'),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                        color: Color(0xff176FF2),
                        fontSize: 12,
                        fontFamily: 'montserrat'),
                  ),
                ]),
          ),
          CategoriesListView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recommended',
              style: AppText.font18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CategoryListExplore(),
          ),
        ],
      ),
      bottomNavigationBar: ButtonNavigationBar(),
    );
  }
}
