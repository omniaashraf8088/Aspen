import 'package:flutter/material.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
