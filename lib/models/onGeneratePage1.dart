// bu faylni ongenerateRoutega ishlat home barindagi birinchi listdagi elemtlarga bosganda CustomScrollView ochilsin
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OngeneratePage1 extends StatelessWidget {

  int indeks;
  OngeneratePage1(this.indeks);

  @override
  Widget build(BuildContext context) {
    // var shahar = Cities(name[indeks], shortInfo[indeks], color[indeks], img[indeks]);
    return Scaffold(
      appBar: AppBar(
        title: Text("$indeks"),
      ),
    );
  }
}