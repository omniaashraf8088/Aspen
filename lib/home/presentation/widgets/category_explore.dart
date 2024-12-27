import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryExplore extends StatelessWidget {
  const CategoryExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/place1.jpeg',
                      fit: BoxFit.fill,
                      width: 166,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          '4N/5D',
                          style:GoogleFonts.montserrat(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Text(
                'Explore Aspen',
                style: GoogleFonts.montserrat(
                  fontSize: 14,color: Color(0xff232323)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
