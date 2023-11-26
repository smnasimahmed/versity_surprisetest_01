import 'package:flutter/material.dart';

class Custom_nev_icon extends StatelessWidget {
  const Custom_nev_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        color: Colors.black,
        child: Icon(Icons.navigate_next));
  }
}
