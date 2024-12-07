import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes/app_routes.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Stack(
                children: [
                  const Image(image: AssetImage('assets/images/first image place2.jpg'), width: double.infinity,height: 340,
                    fit: BoxFit.fill,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(height: 40,width: 40,decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)

                    ),
                        child: IconButton(onPressed: (){
                          GoRouter.of(context).push(AppRoutes.kHome);
                        }, icon: const Icon(Icons.keyboard_arrow_left))),
                  ),
                  Positioned( bottom: 12,left: 227,top: 290,

                    child: Container(height: 40,width: 40,decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.heart_broken_rounded)),
                                        ),),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text('Coeurdes Alpes'),
                Spacer(),
                Text('Show map'),
              ],
            ),
          ),
          const Row(children: [
            Icon(Icons.star),
            Text('4.5 '),
            Text(' (355 Reviews)'),
          ],),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Text('Read More'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(alignment: Alignment.topLeft,
                child: Text('Facilities')),
          ),
          Expanded(
            child: ListView.builder( scrollDirection:Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context,value){
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: 77,height: 74,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Icon(Icons.icecream_outlined),
                      SizedBox(
                        height: 6,
                      ),
                      Text('1 Heater'),
                    ],
                  ),
                ),
              );
            }),
          ),
          Row(
            children: [
              const Column(
                children: [
                  Text('Price'),
                  Text("199"),
                ],
              ),
              const Spacer(),
              Container(
                child: const Row(
                  children: [
                    Text('Book Now'),
                    Icon(Icons.chevron_right),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
