import 'package:bangun_datar/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final lingkaran_controller _lingkaran_controller = Get.put(lingkaran_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lingkaran Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/lingkaran.jpg",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Lingkaran"),
          ),
          Text(
              "Lingkaran adalah tempat kedudukan titik-titik yang berjarak sama dengan satu titik tertentu."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _lingkaran_controller.r = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari-jari",
                  hintText: "Masukkan Jari-jari",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      _lingkaran_controller.hitungLuas();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: Text("Hitung Luas",
                        style: TextStyle(color: Colors.white))),
              ),
              ElevatedButton(
                  onPressed: () {
                    _lingkaran_controller.hitungKeliling();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      padding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  child: Text("Hitung Keliling",
                      style: TextStyle(color: Colors.deepPurple))),
            ],
          ),
          Obx(
                () => Text(
              _lingkaran_controller.hasil.value,
              style: TextStyle(
                color: _lingkaran_controller.isHitungLuas.value
                    ? Colors.green
                    : Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}