import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //ager pager arguments get kre
    // final arg=Get.arguments as int;  //akta single data type nibe
    final arg = Get.arguments; //avabe rakhle sb data nibe map/int/duble

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result page'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Name : ${arg['Name']} \n Roll : ${arg['Roll']}",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          arg['isPassed'] == true
              ? const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 30,
                )
              : const Icon(
                  Icons.dangerous_outlined,
                  color: Colors.red,
                  size: 30,
                ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('back to Counter')),
        ],
      ),
    );
  }
}
