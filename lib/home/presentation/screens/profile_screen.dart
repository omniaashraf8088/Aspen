import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        automaticallyImplyLeading: false,
        leading: const Icon(
            Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed:(){},
              icon:const Icon(Icons.calendar_today,
              color: Colors.black,
              ),
          ),
        ],
        elevation: 0,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            Text(' Welcome Back !',style: TextStyle(
              fontSize: 22,color: Colors.indigo.shade400
            ),
            ),
            const Text(' Doctor Peterson ',
              style: TextStyle(
              fontSize: 28,fontWeight: FontWeight.bold,
            ),),
            Card(
              clipBehavior: Clip.hardEdge,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(16)
             ),
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child:
                     const Padding(
                       padding:  EdgeInsets.all(16),
                       child:  Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Appointment Request',style: TextStyle( color: Colors.white,
                              ),),
                              Icon(Icons.more_vert_sharp, color: Colors.white,),
                            ],
                          )  ,
                          Row(
                            children: [
                              Icon(Icons.watch_later, color: Colors.white,),
                              SizedBox(width: 12,),
                              Text('12 Jan 2020 , 8am - 10am',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            ],
                          )
                        ],),
                     ),
                  ),
                   ListTile(
                    title: const Text('Louis'),
                    leading: Card(
                      clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: const Image(image: AssetImage('assets/images/first image place.jpg'))),
                    subtitle:const Text('Patterson'),
                    trailing: const Icon(Icons.error_outline,color: Colors.blue,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                        GoRouter.of(context).push(AppRoutes.kHome);
                      }, style: TextButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                        child: const Text('ACCEPT',
                      ),
                      ),
                       ElevatedButton(style:TextButton.styleFrom(backgroundColor: Colors.grey [300],
                       ),
                         onPressed: (){
                        GoRouter.of(context).push(AppRoutes.kHome);
                      },
                         child: Text('DECLINE', style: TextStyle(color:  Colors.grey[600]),),),
                    ],
                  )
                ],
              ),
            ),
        Text(' Next Appointments',style: TextStyle(
        fontSize: 14,color: Colors.indigo.shade400,fontWeight: FontWeight.bold,
    ),),
          ],
        ),
      ),
    );
  }
}
