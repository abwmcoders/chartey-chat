import 'package:chatey_chat/colors.dart';
import 'package:chatey_chat/features/landing/landing.dart';
import 'package:chatey_chat/firebase_options.dart';
import 'package:chatey_chat/screens/mobile_layout_screen.dart';
import 'package:chatey_chat/screens/web_layout_screen.dart';
import 'package:chatey_chat/utils/responsive_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const LandingScreen(),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
    );
  }
}
