import 'package:flutter/material.dart';

class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              //height: MediaQuery.of(context).size.height / 5,
              height: height * 0.35,
              width: height * 0.35,

              color: Colors.red,
            ),
          ),
          SizedBox(
            height: height * 0.10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.10),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                SizedBox(
                  width: width * 0.10,
                ),
                Text(
                  "Flutter",
                  style: TextStyle(fontSize: width * 0.13),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
