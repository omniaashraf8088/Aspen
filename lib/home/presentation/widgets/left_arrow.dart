import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes/app_routes.dart';

class LeftArrow extends StatelessWidget {
  const LeftArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: 45,height: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: IconButton(onPressed: (){
              GoRouter.of(context).push(AppRoutes.kHome);
            }, icon: const Icon(Icons.keyboard_arrow_left,color: Color(0xffB8B8B8),)),
          )),
    );
  }
}