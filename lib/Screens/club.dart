import 'package:flutter/material.dart';
import 'package:gla_apk_clone/Homescreen.dart';

class club extends StatelessWidget {
  const club({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 112, 52),
          title: Text("Apply/Details Of Club"),
          leading: IconButton(
              onPressed: () {
                runApp(MaterialApp(
                  home: HomeScreen(),
                ));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SizedBox(
          child: Image(image: AssetImage("assets/screens/club.jpg")),
        ),
      ),
    );
  }
}
