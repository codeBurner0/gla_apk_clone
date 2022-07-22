import 'package:flutter/material.dart';
import 'package:gla_apk_clone/Homescreen.dart';

class Fee extends StatelessWidget {
  const Fee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 112, 52),
          title: Text("Fee Details"),
          leading: IconButton(
              onPressed: () {
                runApp(MaterialApp(
                  home: HomeScreen(),
                ));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image(
            image: AssetImage("assets/screens/Fee.jpg"),
          ),
        ),
      ),
    );
  }
}
