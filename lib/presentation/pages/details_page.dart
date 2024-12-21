import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_text.dart';
import '../widgets/left_arrow.dart';

import 'package:animate_do/animate_do.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: SizedBox(
                    height: 365,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/homeScreen2.png',
                            height: 340,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        LeftArrow(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 24,
                              child: SvgPicture.asset(
                                'assets/images/icons/Heart_fill_red.svg',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Coeurdes Alpes',
                        style: AppText.font32.copyWith(fontSize: 24),
                      ),
                      Text(
                        'Show map',
                        style: AppText.font14,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8,bottom: 16
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '4.1',
                          style: AppText.font12,
                        ),
                        Text(
                          '(355 Reviews)',
                          style: AppText.font12,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Aspen is as close as one can get to a storybook alpine town, ',
                    style: AppText.font14Text,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        'Read More',
                        style: AppText.font14,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff176FF2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: FadeInLeft(
                        child: Text(
                          'Facilities',
                          style: AppText.font32.copyWith(fontSize: 22),
                        ),
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (int index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          width: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffF3F8FE)),
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 6,
                              ),
                              Icon(Icons.wifi, size: 32,),
                              SizedBox(
                                height: 6,
                              ),
                              Text('1 Heater', style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Price',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'montserrat',
                                  color: Color(0xff232323))),
                          Text(
                            "\$199",
                            style:GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xff2DD7A4,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 233,
                        height: 65,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: Color(0xff176FF2)),
                          onPressed: () {},
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Book Now',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(Icons.arrow_forward_outlined,
                                    size: 16, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )

                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
