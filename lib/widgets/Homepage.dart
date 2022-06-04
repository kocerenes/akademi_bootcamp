
import 'package:flutter/material.dart';
class   Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Sayfası"),
      ),
      body:Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kullanıcı Bilgileri",
                style: TextStyle(
                  fontSize: 22,
                  color:Colors.deepPurpleAccent,
                    fontWeight :FontWeight.bold),
        ),
                TextField(
                  decoration: InputDecoration(
                  hintText: "Kullanıcı adını giriniz",

                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Parolanızı giriniz",
                ),
              ),
              SizedBox(height: 15,),
              RaisedButton(
              child: Text("Giriş"),
                onPressed: () {
                  print("Girişe tıklandı");
                  Navigator.pushNamed(context, "/CalculatePage");
                },
              )


            ],

          ),
      ));



  }
}





