
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  bool sonuc;

  SonucEkrani({required this.sonuc});

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}


class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("SONUÇ EKRANI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc ? Image.asset("resimler/happy.jpg"): Image.asset("resimler/unhappy.png"),
            Text(widget.sonuc ? "Kazandınız":"Kaybettiniz",style: TextStyle(
                color: Colors.black54,
                fontSize: 36),
            ),

            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("Tekrar Oyna",style: TextStyle(
                    fontSize: 20
                ),),
                color: Colors.blue,
                textColor: Colors.white,

                onPressed: (){
                  Navigator.pop(context);
                  //geri tuşunun yaptığı işlevi yapar
                  //hangi sayfadan geldiysek oraya geri gider
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
