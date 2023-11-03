import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetSpage extends StatelessWidget {

  var Email = TextEditingController();
  var storage = GetStorage();
  RxString a = ''.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('${Get.arguments}'),centerTitle: true,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(16)
          ,child: TextField(
              controller: Email,
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(16),
          child: ElevatedButton(
            child: Text('Save'),
            onPressed: (){
              if(GetUtils.isEmail(Email.text)){
                storage.write('email', Email.text);
                Get.snackbar('Successfull', 'Email Saved');
              }else{
                Get.snackbar('Error', 'Input Valid Email');
              }
            },
          ),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            //storage.remove('email'); --- Remove the store value as Key
            //storage.erase(); --- All store value of all key will remove
            a.value = storage.read('email');
          }, child: Text('Show')),
          Obx(()=> Text(a.value))
        ],
      ),),
    ));
  }
}
