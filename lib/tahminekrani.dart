import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayitahmin/sonucekrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
 var tfTahmin=TextEditingController();
 //textfield üzerinden veri almak için oluşturduk
 int rasgelesayi=0;
 int kalanhak=5;
 String yonlendirme="";
 @override
  void initState() {
    super.initState();
    //sayfa açıldığı an çalışır
   rasgelesayi=Random().nextInt(101);
   print("rastgele sayı: $rasgelesayi");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("TAHMİN EKRANI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kalan Hak : $kalanhak",style:TextStyle(
              color: Colors.pink,fontSize: 30
            ),),
            Text("Yardım: $yonlendirme",style:TextStyle(
                color: Colors.black54,fontSize: 30
            ),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: tfTahmin,
                //girilen bilgiyi alıcaz
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("Tahmin Et",style: TextStyle(
                    fontSize: 20
                ),),
                color: Colors.pink,
                textColor: Colors.white,

                onPressed: (){
                  setState(() {
                    kalanhak=kalanhak-1;

                  });
                  int tahmin=int.parse(tfTahmin.text);
                  //textfiled içinddeki veriyi alıp int şeklie çeviririz
                  if(tahmin==rasgelesayi){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SonucEkrani(sonuc:true)));
                    return;
                  }
                  if(tahmin>rasgelesayi){
                    setState(() {
                      yonlendirme="TAHMİNİ AZALT";
                    });
                  }
                  if(tahmin<rasgelesayi){
                    setState(() {
                      yonlendirme="TAHMİNİ ARTTIR";
                    });
                  }
                  if(kalanhak==0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SonucEkrani(sonuc: false,)));
                  }
                  tfTahmin.text="";


                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
