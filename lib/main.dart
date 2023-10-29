import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/dialog.dart';
import 'package:getx/snackbar.dart';

import 'bottomsheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('GetX'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=> Get.to(SnacKbar()), child: Text('SnackBar')),
            ElevatedButton(onPressed: ()=> Get.to(MyHomePage2()), child: Text('Dialog')),
            ElevatedButton(onPressed: ()=> Get.to(BottomSheetTheme()), child: Text('Bottom Sheet')),
          ],
        ),
      ),
    ));
  }
}

