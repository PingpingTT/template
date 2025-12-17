
import 'package:flutter/material.dart';
import 'package:template/template.dart';

class Usetemplate extends StatelessWidget {
  const Usetemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusTemplate(
        imagePath: "assets/phone1.png",
        title: "ยังไม่มีข้อมูล",
        description: "เมื่อมีข้อมูลจะแสดงที่หน้านี้",
        buttonText: "รีเฟรช",
        imageOffsetY: -120,
        onButtonPressed: () {},
        buttonColor: Colors.pink,
      ),
    );
  }
}
