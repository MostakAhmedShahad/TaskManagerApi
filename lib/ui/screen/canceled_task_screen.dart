import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/task_list_item.dart';

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreenState();
}

class _CanceledTaskScreenState extends State<CanceledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(child: 
    ListView.builder(itemCount :12,
          itemBuilder: (context, index) {
            return TaskListItem(
                tittle: 'Canceled',
                descrptiption: 'Descption descption descptiondescptiondescptiondescption descptiondescption ',
                date: '12/12/12',
                taskType: 'Canceled',
                onEditPress: () {},
                onDeletePress: () {}, 
                bgcolor: Colors.red,
              );
          },
          )
    );
  }
}