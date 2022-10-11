import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isobscure = true;
  int selected = 0;

  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
              obscureText: isobscure,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.blue,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isobscure = !isobscure;
                      },
                    );
                  },
                  icon: isobscure == true
                      ? Icon(
                          Icons.visibility,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.blue,
                        ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(
                () {
                  isFavourite = !isFavourite;
                },
              );
            },
            icon: isFavourite == true
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(Icons.favorite_outline),
          )
        ],
      ),
    );
  }
}
