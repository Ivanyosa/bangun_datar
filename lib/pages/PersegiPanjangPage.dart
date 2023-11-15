import 'dart:html';

import 'package:bangun_datar/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegipanjang_page extends StatelessWidget {
  persegipanjang_page({super.key});
  final persegipanjang_controller _persegipanjang_controller = Get.put(persegipanjang_controller());

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
            "assets/persegi panjang.png",
            height: 115,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi Panjang"),
          ),
          Text("Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar"),
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegipanjang_controller.panjang =int.parse(value);

              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "panjang",
                  hintText: "masukan panjang",
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
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegipanjang_controller.lebar =int.parse(value);

              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "lebar",
                  hintText: "masukan lebar",
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
                    _persegipanjang_controller.hitungLuas();
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
                    _persegipanjang_controller.hitungKeliling();
                  }, child: Text("Hitung keliling")),

            ],
          ),
          Obx(
                () => Text(
              _persegipanjang_controller.hasil.value,
              style: TextStyle(
                color: _persegipanjang_controller.isHitungLuas.value
                    ? Colors.redAccent
                    : Colors.greenAccent,
              ),
            ),
          ),

        ],
      ),
    );
  }
}