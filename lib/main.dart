import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
//      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer:  Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Scaffold", style: TextStyle(
          color: Colors.white
        ),),

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
          ),

          Container(
            height: 200,
            width: 200,
            color: Colors.black,
          ),
        ],
      ),



      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white, size: 20,),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "ADD", ),
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: "Minus", ),
        ],
      ),
    );
  }
}



