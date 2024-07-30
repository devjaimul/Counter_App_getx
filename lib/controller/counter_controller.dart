import 'package:get/get.dart';

class CounterController extends GetxController {
  //2 vabei lekha jay ,,
  // int,double,bool ,list sb use korar age rxint lekha lagbe


  //j value k change korte chai seta
  //var counter=0.obs;
  RxInt counter = RxInt(0);


  //increment function
  increment() {
    counter++;
    update();
  }


  //decrement function
  decrement() => counter--;

}
