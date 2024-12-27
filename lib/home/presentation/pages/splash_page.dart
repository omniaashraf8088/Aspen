import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes/app_routes.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splashScreen.jpg'),
                  fit: BoxFit.fill),
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 93,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Aspen',style: TextStyle(
                    fontSize: 116,fontFamily: 'Hiatus',color: Colors.white
                ),
                  // style: TextStyle.GoogleFonts.Hiatus(),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap:(){
                  GoRouter.of(context).push(AppRoutes.kHome);
                },
                child: Container(
                  width: 311,
                  height: 53,
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(16),
                      gradient:const LinearGradient(colors: [
                        Color(0xff176FF2),
                        Color(0xff196EEE),
                      ])
                  ),
                  child:  const Center(
                    child: Text('Explore',style: TextStyle(
                        color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              const SizedBox(height: 48),
            ],
          )
        ],
      ),
    );
  }
}
