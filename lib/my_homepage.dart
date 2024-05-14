
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/employee.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});


  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Employee(),));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter",style: TextStyle(color: Colors.blue,fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(width: 10),
            Text("FIrebase",style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      body:Container(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}