import 'package:flutter/material.dart';

class DashBoadItemCountWidget extends StatelessWidget {
  const DashBoadItemCountWidget({
    super.key,
    required this.itemCount,
    required this.typeOfTask,
  });

  final int itemCount;
  final String typeOfTask;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            itemCount.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          FittedBox(child: Text(typeOfTask))
        ],
      ),
    );
  }
}