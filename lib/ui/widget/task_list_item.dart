import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.tittle,
    required this.descrptiption,
    required this.date,
    required this.taskType,
    required this.onEditPress,
    required this.onDeletePress, 
    required this.bgcolor,
    
  });

  final String tittle, descrptiption, date, taskType;
  final VoidCallback onEditPress, onDeletePress;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tittle,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Text(descrptiption),
            SizedBox(
              height: 4,
            ),
            Text(date),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Chip(
                  label: Text(
                    taskType,
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black87),
                  ),
                  backgroundColor:bgcolor,
                ),
                Spacer(),
                IconButton(onPressed: onEditPress, icon: Icon(Icons.edit)),
                IconButton(onPressed: onDeletePress, icon: Icon(Icons.delete)),
              ],
            )
          ],
        ),
      ),
    );
  }
}


