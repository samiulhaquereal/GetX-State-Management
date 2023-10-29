import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('GetX'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.defaultDialog(
                title: "Yeah Boy",
                titleStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                middleText: "This is Content Bro",
                middleTextStyle: TextStyle(fontSize: 16 ),
                //backgroundColor: Colors.grey,
                radius: 20, 
                  content: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Expanded(child: Text('Data loading...')),
                    ],
                  ),
                textCancel: 'Cancel',
                //cancelTextColor: Colors.black26,
                onCancel: (){

                },
                textConfirm: 'Confirm',
                //confirmTextColor: Colors.blue,
                onConfirm: (){
                  Get.back();
                },
                buttonColor: Colors.green,
                barrierDismissible: false
              );
            }, child: Text('Click'),),
          ],
        ),
      ),
    ));
  }
}