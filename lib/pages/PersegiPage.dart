import 'dart:html';

import 'package:bangun_datar/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
        "Persegi PAGE",
        style: TextStyle(color: Colors.white),
    ),
    ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegi.webp",
            height: 115,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi=int.parse(value);

              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "sisi",
                  hintText: "masukansisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal
                ),
              ),
              onPressed: (){
            _persegiController.hitungLuas();
          }, child: Text("Hitung Luas",
            style: TextStyle(color: Colors.blueAccent),)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                padding: EdgeInsets.all(20),
                textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                ),
                 ),
              onPressed: (){
            _persegiController.hitungkeliling();
          }, child: Text("Hitung keliling")),

        ],
      ),
          Obx(()=> Text(_persegiController.hasil.value,
            style: TextStyle(color: Colors.green),)),
        ],
      ),
    );
  }
}