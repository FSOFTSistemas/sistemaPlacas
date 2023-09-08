import 'package:flutter/material.dart';

class Acompanhamentos extends StatelessWidget {
  const Acompanhamentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14)
      ),
      padding: const EdgeInsets.all(12),
      child: const Center(
        child: Text('60',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),)),
    );
  }
}