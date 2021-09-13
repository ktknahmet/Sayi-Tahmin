import 'package:flutter/material.dart';
import 'package:sayitahmin/tahminekrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ANASAYFA(),
    );
  }
}

class ANASAYFA extends StatefulWidget {

  @override
  _ANASAYFAState createState() => _ANASAYFAState();
}

class _ANASAYFAState extends State<ANASAYFA> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text("ANASAYFA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TAHMİN OYUNU",style: TextStyle(
              color: Colors.black54,
              fontSize: 36),
            ),
        Image.asset("resimler/zar.png"),
        SizedBox(
          width: 200,
          height: 50,
          child: RaisedButton(
            child: Text("Oyuna Başla",style: TextStyle(
              fontSize: 20
            ),),
            color: Colors.blue,
            textColor: Colors.white,

            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder:(context)=>TahminEkrani()));
            },
          ),
        )
          ],
        ),
      ),
    );

  }
}
