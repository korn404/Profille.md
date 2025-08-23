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
     List<String>ListProduct = ['app','sasd','adad'];
    return Scaffold(
      appBar: AppBar(title: Text('แนะนำตัว',style: TextStyle(color: Colors.black)),centerTitle: false, backgroundColor: Colors.white),
      /*body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: Center(child: Text('Hello,Kittikorn tangsungnoen 660710792',
            textAlign: TextAlign.center,))
        ),
      ),*/
     /*body: ListView(children:
     [Container(height: 400,width: double.infinity,color: Colors.purple,child: Text("Item1"),),
     Container(height: 200,width: double.infinity,color: Colors.white,child: Text("Item2"), ),
     Container(height: 100,width: double.infinity,color: Colors.green,child: Text("Item3"),),
     Container(height: 100,width: double.infinity,color: Colors.yellow,child: Text("Item4"),),],
    )*/
      /*body:ListView.builder(itemCount:ListProduct.length,itemBuilder:(context,index){
        return Container(
          height: 100,
          width: 10,
          color: Colors.green,
          child: Text(ListProduct[index]),*/
        body: Center(child: Stack(children: [Container(height: 400, width: 700, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10),),),
              Positioned(left: 20, top: 20, child: CircleAvatar(radius: 100, backgroundImage: AssetImage('assets/me1.jpg'),),),
          Positioned(right: 20, top: 30, child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [Container(width: 400,padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),  ),
                  child: Text("Name : กิตติกร ตั้งสูงเนิน รหัสนักศึกษา 660710792", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 10),
                Container(width:400,padding: EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),  ),
                  child: Text("คณะ : วิทยาศาสตร์  สาขา :วิทยาการข้อมูล", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 10),
                Container(width: 400,padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),  ),
                  child: Text("คำติดปาก :อ่าห่ะ", style: TextStyle(color: Colors.black)),),]

            ),
          ),
          Positioned(right: 20, bottom: 30, child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [SizedBox(height: 10),
            Container(width: 660,padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.greenAccent.withOpacity(0.7),),),
        ],),),
        ],),),
    ); // Scaffold
  }
}