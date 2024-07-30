import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/result_screen.dart';

import '../controller/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //onno page ar akta instance/obj create korte hbe function and others sb kisu call korar jonno
    final controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //j value ta k change korte chai seta k obx diye wrap korte hbe
            Obx(() {
              return Text(
                controller.counter.value.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  style: IconButton.styleFrom(backgroundColor: Colors.red),
                ),
                IconButton(
                  onPressed: () {
                    controller.increment();
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  style: IconButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  controller.counter.value = 0;

                  //getx use kore snackbar

                //   Get.snackbar('Complete', 'You just Clear Everything',
                //    //   backgroundColor: Colors.pink,
                // //  colorText: Colors.blue,
                //     snackPosition: SnackPosition.BOTTOM,
                //     duration: const Duration(seconds: 2)
                //   );

                  Get.defaultDialog(
                    title: 'Alert!',
                    content: Text('Do you want to rest?'),
                    confirm: Text('Yes'),
                    cancel: Text('No'),

                  );


                },
                child: const Text('Reset')),
            ElevatedButton(
                onPressed: () {
//navigation with getx

                  //jdi chai j page a jbo sekhne theke r back na korte
                  // Get.offAll(
                  //     () => ResultScreen(result: controller.counter.value),
                  //
                  // );

                  Get.to(() => const ResultScreen(),

                      //kivabe arguments pass korte hy

                      // arguments: controller.counter.value, //single argument

                      //multiple argument

                      arguments: {
                        'Name': 'Jia',
                        'Roll': '550675',
                        'isPassed': true,
                      });
                },
                child: const Text('Show Result')),
          ],
        ),
      ),
    );
  }
}
