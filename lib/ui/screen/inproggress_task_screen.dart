import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/task_list_item.dart';

class InproggressTaskScreen extends StatefulWidget {
  const InproggressTaskScreen({super.key});

  @override
  State<InproggressTaskScreen> createState() => _InproggressTaskScreenState();
}

class _InproggressTaskScreenState extends State<InproggressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: 
    ListView.builder(itemCount :12,
          itemBuilder: (context, index) {
            return TaskListItem(
                tittle: 'In Progress',
                descrptiption: 'Descption descption descptiondescptiondescptiondescption descptiondescption ',
                date: '12/12/12',
                taskType: 'In Progress',
                onEditPress: () {},
                onDeletePress: () {}, bgcolor: Colors.red,
              );
          },
          )
    );
  }
}