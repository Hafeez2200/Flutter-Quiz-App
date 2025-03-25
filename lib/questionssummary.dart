import 'package:flutter/material.dart';
import 'package:learning/summaryitem.dart';

class Questionssummary extends StatelessWidget {
  const Questionssummary(this.summarydata, {super.key});
  final List<Map<String,Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data){
            return Summaryitem(itemData: data);
          }).toList(),
        ),
      ),
    );
  }
}