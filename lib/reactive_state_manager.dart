import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveState extends StatelessWidget {
  RxInt a = 0.obs;

  void increment(){
    a.value++;
  }
  void decrement(){
    if(a.value>0){
      a.value--;
    }else{
      a.value = 0;
    }
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('${Get.arguments}'),),
      body: Center(
        child: Obx(()=> Text(a.value.toString(),style: TextStyle(fontSize: 50),)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(width: 15,),
          FloatingActionButton(
            onPressed: () {
              decrement();
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    ));
  }
}
