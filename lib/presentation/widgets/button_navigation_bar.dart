import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({super.key});

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (index) {
        setState(() => this.index = index);
      },
      height: 71,
      destinations: [
        SvgPicture.asset("assets/images/icons/Home_icon.svg",

        ),
        SvgPicture.asset("assets/images/icons/Ticket_icon.svg"),
        SvgPicture.asset("assets/images/icons/Heart_icon.svg"),
        SvgPicture.asset("assets/images/icons/Profile_icon.svg"),
      ],
    );
  }
}
