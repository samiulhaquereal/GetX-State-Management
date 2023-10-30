import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/languageController.dart';

class LanguageChange extends StatelessWidget {
   LanguageChange({super.key});

  final LanguageController controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(() => LanguageController());
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('${Get.arguments}'),centerTitle: true,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello'.tr,style: TextStyle(fontSize: 25),),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            //final LanguageController controller = Get.find<LanguageController>();
            // OR
            //Get.find<LanguageController>().changeLanguage('bn', 'BN');}, child: Text('Bangla')),
            controller.changeLanguage('bn', 'BN');}, child: Text('Bangla')),
          ElevatedButton(onPressed: (){controller.changeLanguage('hi', 'IN');}, child: Text('Hindi')),
          ElevatedButton(onPressed: (){controller.changeLanguage('en', 'US');}, child: Text('English')),
        ],
      ),),
    ));
  }
}
