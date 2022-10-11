import 'package:flutter/material.dart';

class MQDemo extends StatefulWidget {
  const MQDemo({Key? key}) : super(key: key);

  @override
  State<MQDemo> createState() => _MQDemoState();
}

class _MQDemoState extends State<MQDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
