import 'package:get/get.dart';

class persegipanjang_controller extends GetxController{
  RxBool isHitungLuas = true.obs;
  int panjang = 0;
  int lebar = 0;

  final hasil = "".obs;

  void hitungLuas() {
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan dari $panjang x $lebar = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil perhitungan dari  2x $panjang X $lebar = $hitung";
    isHitungLuas.value = false;
  }
}