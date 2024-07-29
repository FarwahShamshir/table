import 'package:flutter/material.dart';
import 'ScreenThree.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    Key? key,
    required this.tableNumber,
    required this.startingPoint,
    required this.endingPoint,
  }) : super(key: key);

  final int tableNumber;
  final int startingPoint;
  final int endingPoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table of $tableNumber'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: (endingPoint - startingPoint + 1),
              itemBuilder: (context, index) {
                int multiplier = startingPoint + index;
                int product = tableNumber * multiplier;
                return ListTile(
                  title: Text('$tableNumber * $multiplier = $product'),
                );
              },
            ),
          ),
          ElevatedButton(
            child: const Text('Generate Quiz'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenThree(
                    tableNumber: tableNumber,
                    startingPoint: startingPoint,
                    endingPoint: endingPoint,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
