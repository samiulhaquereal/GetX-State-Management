import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/dialog.dart';
import 'package:getx/getstorage.dart';
import 'package:getx/internationalization.dart';
import 'package:getx/messages.dart';
import 'package:getx/reactive_state_manager.dart';
import 'package:getx/routename.dart';
import 'package:getx/snackbar.dart';

import 'bottomsheet.dart';

void main() async {
  await GetStorage.init();
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
      initialRoute: '/',
      defaultTransition: Transition.rightToLeft,
      getPages: appPages,
      unknownRoute: GetPage(name: '/notfound', page: ()=> unknownRoutepage()),
      translations: Messages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
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
            ElevatedButton(onPressed: ()=> Get.toNamed('/snackbar?channel=Snackbar&content=Yeap Boy'), child: Text('SnackBar')),
            ElevatedButton(onPressed: ()=> Get.toNamed('/dialogpage/Dialog'), child: Text('Dialog')),
            ElevatedButton(onPressed: ()=> Get.to(BottomSheetTheme(),arguments: 'Bottom Sheet & Theme'), child: Text('Bottom Sheet')),
            ElevatedButton(onPressed: ()=> Get.to(ReactiveState(),arguments: 'Reactive State Management'), child: Text('Reactive State')),
            ElevatedButton(onPressed: ()=> Get.to(LanguageChange(),arguments: 'Internationalization'), child: Text('Language Change')),
            ElevatedButton(onPressed: ()=> Get.to(GetSpage(),arguments: 'Get Storage and Email Validation'), child: Text('Get Storage and Email Validation')),
          ],
        ),
      ),
    ));
  }
}

