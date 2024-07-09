import 'package:flutter/material.dart';
import 'package:platform_convert_app/provider/platform_provider.dart';
import 'package:provider/provider.dart';

class HomeAndroidPage extends StatelessWidget {
  const HomeAndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      actions: [
       IconButton(onPressed: () {
         print("${Provider.of<PlatformProvider>(context,listen: false).isIOS}");
         Provider.of<PlatformProvider>(context,listen: false).setIsIos();
         print("${Provider.of<PlatformProvider>(context,listen: false).isIOS}");
       }, icon: Icon(Icons.apple))
      ],),
      body: ElevatedButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Deleted Contact"))
        );
      }, child: Text("click me"),

      ),
    );
  }
}
