import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: Constants.firebaseConfig.apiKey,
        appId: Constants.firebaseConfig.appId,
        messagingSenderId: Constants.firebaseConfig.messagingSenderId,
        projectId: Constants.firebaseConfig.projectId),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Abdullah Al Masum",
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: const Color(0xFF07111A),
        textTheme: const TextTheme(
          bodyText1: Constants.titleTextStyle,
          bodyText2: Constants.defaultTextStyle,
        ),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        const Home(),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(600, name: MOBILE),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
    );
  }
}
