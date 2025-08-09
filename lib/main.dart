import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Laout',style: TextStyle(color: Colors.white)),centerTitle: false, backgroundColor: Colors.deepPurple),
       /*body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: Center(child: Text('Hello,Kittikorn tangsungnoen 660710792',
            textAlign: TextAlign.center,))
        ),
      ),*/
      body:Center(child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(height: 300, width: 120,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10))),
          Positioned(top:20,child:
          Container(height: 80, width: 80, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red,),),),
          Positioned(bottom:20,child:// Container
          Container(height: 80, width: 80, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green,),),),
          Positioned(top:110,child:
          Container(height: 80, width: 80, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow,),), // Container
          ),],
      ),
      ), // Stack
    ); // Scaffold
  }
}
