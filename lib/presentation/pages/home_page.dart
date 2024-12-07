import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes/app_routes.dart';
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
      ),
      body: Column(
        children: [
          SearchButton(),
          SizedBox(
            height: 75,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, value) {
                  return const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Location'),
                  );
                }),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all( 10),
                child: Align(alignment: Alignment.topLeft,
                    child: Text('Popular')),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, value) {
                      return Container(
                        width: 188,
                        height: 240,
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap:(){
                                GoRouter.of(context).push(AppRoutes.kDetails);
                              },
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/first image place2.jpg',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              bottom:38,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.blueGrey
                                  ),
                                  child: const Text(
                                    'Alley Place',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                             Positioned(
                               bottom:12,
                               child: Padding(
                                 padding: const EdgeInsets.all(16),
                                 child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.blueGrey, ),
                                      child: const Row(
                                    children: [
                                    Icon(Icons.star),
                                    Text(
                                      '4.1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                 ),
                                    ),
                                  ],
                                                             ),
                               ),
                             )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_sharp),
          ),
        ],
      ),
    );
  }
}
