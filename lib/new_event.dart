import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9886da),

      appBar: AppBar(
        backgroundColor: const Color(0xff4a2eb4),
        title: const Text("NewEvent"),
      ),

      body: Container(
        padding: const EdgeInsets.all(25.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xff4a2eb4),
              ),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: const Icon(Icons.event),
                title: const Text("Event"),
                subtitle: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: _textEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: null,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Builder(builder: (context) {
              return TextButton(
                onPressed: () {
                  String newEventText = _textEditingController.text;
                  Navigator.of(context).pop(newEventText);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  primary: const Color(0xffbab3e8),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                child: const Text("ADD"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
