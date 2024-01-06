import 'package:flutter/material.dart';

class TasksScreenWidget extends StatefulWidget {
  const TasksScreenWidget({super.key});

  @override
  State<TasksScreenWidget> createState() => _TasksScreenWidgetState();
}

class _TasksScreenWidgetState extends State<TasksScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            )
          ],
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: [
              Tab(
                text: "Task List 1",
              ),
              Tab(
                text: "Task List 2",
              ),
              Tab(
                text: "Task List 3",
              ),
              Tab(
                text: "Task List 4",
              ),
              Tab(
                text: "Task List 5",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Calls"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
