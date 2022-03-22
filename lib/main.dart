import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'utils/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: MyTheme.firebaseConfig.apiKey,
        appId: MyTheme.firebaseConfig.appId,
        messagingSenderId: MyTheme.firebaseConfig.messagingSenderId,
        projectId: MyTheme.firebaseConfig.projectId),
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
        appBarTheme: MyTheme.appBarTheme,
        scaffoldBackgroundColor: KColors.primary,
        textTheme: TextTheme(
          titleMedium: MyTheme.largeTextStyle,
          bodyLarge: MyTheme.largeTextStyle,
          bodyMedium: MyTheme.defaultTextStyle,
          bodySmall: MyTheme.smallTextStyle,
        ),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        const Home(),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(500, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
    );
  }
}
