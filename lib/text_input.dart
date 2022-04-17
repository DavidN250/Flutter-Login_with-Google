
import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callbackFunction;

  const TextInputWidget({Key? key, required this.callbackFunction})
      : super(key: key);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callbackFunction(controller.text);
    controller.clear();
    // FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: 'Type a message',
          suffix: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.blue,
            tooltip: 'Post a Message',
            onPressed: this.click,
          )),
    );
  }
}