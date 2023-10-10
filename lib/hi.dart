import 'package:flutter/material.dart';
import 'package:view/main.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: fs(),
    );
  }
}

class fs extends StatefulWidget {
  const fs({super.key});

  @override
  State<fs> createState() => _fsState();
}

class _fsState extends State<fs> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('switched: $isSwitched'),
          Center(
            child: Switch(
              value: isSwitched,
              onChanged: (bool val) {
                setState(() {
                  isSwitched = val;
                });
              },
              activeColor: Colors.black,
              inactiveThumbColor: Colors.red,
              splashRadius: 100,
              inactiveTrackColor: Colors.amber,
              activeTrackColor: Colors.purple,
             // activeThumbImage: Icon(Icons.camera_alt),
              activeThumbImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2018/05/17/09/18/away-3408119_1280.jpg"),
              inactiveThumbImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

            ),
          )
        ],
      ),
    );
  }
}
