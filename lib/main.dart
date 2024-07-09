
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convert_app/provider/platform_provider.dart';
import 'package:platform_convert_app/views/android/home_page.dart';
import 'package:platform_convert_app/views/ios/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => PlatformProvider()),
   // ChangeNotifierProvider(create: (context) => ContactProvider())
  ], child: const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<PlatformProvider>(builder: (context, plaProvider, _) {
      return
        plaProvider.isIOS?
        CupertinoApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=>const HomeIOSPage()
          },
        ):
        MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=>HomeAndroidPage(),
          },
        );
    });

  }
}

