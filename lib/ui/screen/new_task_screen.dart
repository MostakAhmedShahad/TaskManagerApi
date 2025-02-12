import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/dash_boad_item_count_widget.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/task_list_item.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Expanded(
                child: DashBoadItemCountWidget(
                  itemCount: 12,
                  typeOfTask: 'New',
                ),
              ),
              Expanded(
                child: DashBoadItemCountWidget(
                  itemCount: 12,
                  typeOfTask: 'Completed',
                ),
              ),
              Expanded(
                child: DashBoadItemCountWidget(
                  itemCount: 12,
                  typeOfTask: 'Canceled',
                ),
              ),
              Expanded(
                child: DashBoadItemCountWidget(
                  itemCount: 12,
                  typeOfTask: 'In Progess',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemCount :12,
          itemBuilder: (context, index) {
            return TaskListItem(
                tittle: 'new tittle',
                descrptiption: 'descption ',
                date: '12/12/12',
                taskType: 'new',
                onEditPress: () {},
                onDeletePress: () {}, bgcolor: Colors.green,
              );
          },
          ),
        )
      ],
    ));
  }
}

 