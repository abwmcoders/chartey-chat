import 'package:chatey_chat/colors.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 50),
          const Text(
            'Welcome to Chatey...',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height/9),
          Image.asset('assets/images/bg.png', height: 340, width:  450, color: tabColor,),
           SizedBox(height: size.height / 9),
           const Text('`Read our privacy policy,`')

        ]),
      ),
    );
  }
}
