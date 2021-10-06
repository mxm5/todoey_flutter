import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_model.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) {
        return ListView.builder(
          itemBuilder:(context, index) {
            final task = taskData.meTaskList[index];
            return TaskTile(
              onLongPress: (){
                taskData.deleteTask(task);
              },
                isChecked: task.isDone,
                name: task.name,
                onChanged: (value) {
                  taskData.updateTask(task);
                });
          } ,
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}

//
//= [
//Task(name: ' buy shits '),
//Task(name: ' buy milk '),
//Task(name: ' buy pants '),
//Task(name: ' buy man '),
//]



//(val) {
//setState(() {
////class val = func val;
//taskList[index].toggleDone();
//});
//}


//
//(context, index) {
//return TaskTile(
//isChecked: taskList[index].isDone,
//name: taskList[index].name,
//onChanged: onChecked,
//);
//}