import 'package:flutter/material.dart';
import 'package:task3/my_controller.dart';
import 'package:get/get.dart';
import 'package:task3/total_page.dart';

class Mycart extends StatefulWidget {
  Mycart({super.key});
  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping cart app using Getx ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Books',
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent),
                    child: IconButton(
                      onPressed: () => c.increment(),
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    "${c.books.toString()}",
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                    onPressed: () => c.decrement(),
                    icon: const Icon(Icons.remove),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  'Pens',
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 118),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.redAccent),
                    child: IconButton(
                      onPressed: () => c.incrementpen(),
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    "${c.pens.toString()}",
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                    onPressed: () => c.decrementpen(),
                    icon: const Icon(Icons.remove),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 170,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                      onPressed: ()=>Get.to(()=>  TotalPage()),
                      child: const Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
