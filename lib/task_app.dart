import 'package:first_class_1/Provider/taskProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key});

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Taskprovider>(
        builder: (context, objjjj, child) {
          return InkWell(
            onTap: () {
              // objjjj.Favourites();
            },
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item 1'),
                  trailing: Icon(Icons.favorite_border),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
