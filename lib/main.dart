import 'package:flutter/material.dart';
import 'ScreenTwo.dart';

void main() {
  runApp(const MyApp());
}



class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: ScreenOne(),
    );
  }
}




class _ScreenOneState extends State<ScreenOne> {
  double _tableNumber = 1.0;
  double _startingPoint = 1.0;
  double _endingPoint = 100.0;

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const  Text('Table Number'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height:
            60,
          ),
          Text('table number: ${_tableNumber.toInt()}'),
          Slider(
            value: _tableNumber,
            min: 1,
            max: 100,
            onChanged: (value) {
              setState(() {
                _tableNumber = value;
              });
            },
          ),
          const SizedBox(
            height:
            60,
          ),
          Text('Table Starting Point: ${_startingPoint.toInt()}'),
          Slider(
            value: _startingPoint,
            min: 1,
            max: 100,
            onChanged: (value){
              _startingPoint = value;
            },
          ),
          const SizedBox(
            height:
            60,
          ),
          Text('Table Ending Limit: ${_endingPoint.toInt()}'),
          Slider(
            value: _endingPoint,
            min: 1,
            max: 100,
            onChanged: (value){
              setState(() {
                _endingPoint = value;
              });

            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenTwo(
                    tableNumber: _tableNumber.toInt(),
                    startingPoint: _startingPoint.toInt(),
                    endingPoint: _endingPoint.toInt(),
                  ),
                ),
              );
            },
            child: const Text('Generate Table'),
          ),
        ],
      ),

    );

  }
}
