import 'package:flutter/material.dart';
import 'package:gla_apk_clone/Homescreen.dart';

class timeTable extends StatelessWidget {
  const timeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 112, 52),
          title: Text("Time Table"),
          leading: IconButton(
              onPressed: () {
                runApp(MaterialApp(
                  home: HomeScreen(),
                ));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SizedBox(
          child: Image(image: AssetImage("assets/screens/timeTable.jpg")),
        ),
      ),
    );
  }
}
