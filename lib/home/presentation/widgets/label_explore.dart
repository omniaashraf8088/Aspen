import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_text.dart';

class LabelExplore extends StatelessWidget {
  const LabelExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('Explore', style: AppText.font14)),
        SvgPicture.asset(
          'assets/images/icons/location.svg',
          width: 20,
          height: 20,
        ),
        Text(
          'Aspen,',
          style: AppText.font12,
        ),
        const Text(
          'USA',
          style: AppText.font12,
        ),
        SvgPicture.asset(
          'assets/images/icons/arrow_down.svg',
          width: 18,
          height: 18,
          colorFilter: ColorFilter.mode(
            Color(0xff196EEE),
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
