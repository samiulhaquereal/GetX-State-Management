import 'package:get/get.dart';

class ReactiveStateController extends GetxController{

  RxInt a = 0.obs;
  int b = 0;

  void increment(){
    a.value++;
    b++;
    update();
  }
  void decrement(){
    if(a.value>0 || b>0){
      a.value--;
      b--;
      update();
    }else{
      a.value = 0;
      b = 0;
    }
  }

}