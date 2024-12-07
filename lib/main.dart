
import 'package:aspen_travel_app/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const AspenTravel());
}
 class AspenTravel extends StatelessWidget {
   const AspenTravel({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp.router(
       debugShowCheckedModeBanner: false,
       routerConfig: AppRoutes.router,
     );
   }
 }
