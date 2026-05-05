import 'package:first_class_1/Provider/taskaddProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskaddAppScreen extends StatefulWidget {
  const TaskaddAppScreen({super.key});

  @override
  State<TaskaddAppScreen> createState() => _TaskaddAppScreenState();
}

class _TaskaddAppScreenState extends State<TaskaddAppScreen> {
  @override
  Widget build(BuildContext context) {
    print('hamad');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Practice', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.teal.withOpacity(0.6),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<Taskaddprovider>(
              builder: (context, hamad, child) {
                return GestureDetector(
                  onTap: () {
                    hamad.shrink();
                  },
                  child: Container(
                    width: hamad.width,
                    height: hamad.height,
                    decoration: BoxDecoration(color: Colors.blueGrey),
                  ),
                );
              },
            ),
            // SizedBox(height: 18),
            // Container(
            //   width: 200,
            //   height: 240,
            //   decoration: BoxDecoration(color: Colors.blueGrey),
            // ),
          ),
        ],
      ),
      floatingActionButton: Consumer<Taskaddprovider>(
        builder: (context, hamad, child) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              hamad.scale();
            },
            child: Icon(Icons.add, color: Colors.white),
          );
        },
      ),
    );
  }
}
