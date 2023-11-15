import 'package:get/get.dart';

class segitiga_controller extends GetxController{
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung = alas * tinggi / 2;
    hasil.value = "Hasil perhitungan dari $alas x $tinggi bagi 2 = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung =  alas + tinggi + tinggi;
    hasil.value = "Hasil perhitungan dari $alas + $tinggi+ $tinggi = $hitung";
    isHitungLuas.value = false;
  }
}