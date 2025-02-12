import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/task_list_item.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: 
    ListView.builder(itemCount :12,
          itemBuilder: (context, index) {
            return TaskListItem(
                tittle: 'Completed',
                descrptiption: 'Descption descption descptiondescptiondescptiondescption descptiondescption ',
                date: '12/12/12',
                taskType: 'Completed',
                onEditPress: () {},
                onDeletePress: () {}, bgcolor: Colors.blue,
              );
          },
          )
    );
  }
}