import 'package:flutter/material.dart';
import 'package:event_scheduler/new_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xff9886da),
      appBar: AppBar(
        title: const Text("Event Scheduler"),
        backgroundColor: const Color(0xff4a2eb4),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          backgroundColor: const Color(0xff4a2eb4),
          onPressed: () async {
            String newText = await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NewEventScreen()));
            setState(() {
              _list.add(
                Container(
                    padding: const EdgeInsets.all(8.0),
                    color: const Color(0xffffffff),
                    alignment: Alignment.center,
                    child: Text(newText)),
              );
              _list.add(
                const SizedBox(
                  height: 30,
                ),
              );
            });
          },
          child: const Icon(Icons.add),
        );
      }),
    ));
  }
}
