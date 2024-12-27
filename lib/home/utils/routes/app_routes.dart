import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/details_page.dart';
import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/splash_page.dart';
import '../../presentation/screens/profile_screen.dart';

class AppRoutes{
   static const kSplash='/';
   static const kHome='/home';
   static const kDetails='/details';
   static const kprofileScreen='/profileScreen';


  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplash,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path:  kHome,
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: kDetails,
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsPage();
            },
          ),
          GoRoute(
            path: kprofileScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const ProfileScreen();
            },
          ),

        ],
      ),
    ],
  );
}