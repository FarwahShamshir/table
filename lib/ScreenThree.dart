import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key, required this.tableNumber, required this.startingPoint, required this.endingPoint});


  final int tableNumber;
  final int startingPoint;
  final int endingPoint;



  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

