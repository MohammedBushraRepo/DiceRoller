import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)),
      ),
    ),
  );
}


// class Main extends StatelessWidget {
// const Main({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return const Text("hello bushra 1");
//   }
// }
