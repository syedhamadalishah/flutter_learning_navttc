import 'package:first_class_1/Provider/addtaskProvider.dart';
import 'package:first_class_1/Screens/added_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddtaskApp extends StatefulWidget {
  const AddtaskApp({super.key});

  @override
  State<AddtaskApp> createState() => _AddtaskAppState();
}

class _AddtaskAppState extends State<AddtaskApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Provider Practice Example 2',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddedTaskScreen()),
              );
            },
            child: Container(
              width: 40,
              height: 60,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              child: Icon(Icons.add, size: 34),
            ),
          ),
        ],
        // centerTitle: true,
        backgroundColor: Colors.brown.withOpacity(0.7),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 90,
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(2, 5),
                      ),
                    ],
                  ),
                  child: Consumer<Addtaskprovider>(
                    builder: (context, addd, child) {
                      return Center(
                        child: ListTile(
                          onTap: () {
                            if (addd.myList.contains(index)) {
                              addd.removing(index);
                            } else {
                              addd.adding(index);
                            }
                          },
                          leading: CircleAvatar(
                            maxRadius: 35,
                            backgroundImage: AssetImage('assets/login.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            'task$index',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                          ),
                          subtitle: Text('This Is Task$index'),

                          trailing: Container(
                            width: 50,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: addd.color,
                            ),
                            child: Icon(
                              addd.myList.contains(index)
                                  ? Icons.minimize
                                  : Icons.add,
                              size: 34,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
