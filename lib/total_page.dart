import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Total page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Total Items ',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  "${c.sum.toString()}",
                  style: const TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),
                ),
              ),

              //      Obx(()=>Text("${c.sum.tostring()}"));
            ],
          ),
        ),
      ),
    );
  }
}
