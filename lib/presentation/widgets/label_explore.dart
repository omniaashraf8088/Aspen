import 'package:flutter/material.dart';

class LabelExplore extends StatelessWidget {
  const LabelExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: Column(
              children: [
                const Row(
                  children: [
                    Text('Explore',style: TextStyle(fontSize: 14,fontFamily: 'montserrat',
                    ),),
                    Spacer(),
                    Icon(Icons.location_pin),
                    Text('Aspen,',style: TextStyle(fontSize: 14,fontFamily: 'montserrat',),),
                    Text('USA',style: TextStyle(fontSize: 14,fontFamily: 'montserrat',),),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Aspen',style: TextStyle(fontSize: 32,fontFamily: 'montserrat',),),
                ),
              ]
          ),
        )
      ],

    );
  }
}
