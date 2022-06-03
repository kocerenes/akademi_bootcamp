import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({Key? key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text("Veri Girişi",style: TextStyle(fontSize: 24)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: _buildForm(),
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text("liste buraya gelecek"),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildForm() {
  return Form(

    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: _buildTextFormField("işlem adı"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: _buildTextFormField("operator tempo oranı"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: _buildTextFormField("verilecek pay"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: _buildTextFormField("süre")
              ),
            ),
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.arrow_forward_ios_sharp),
              color: Colors.amber,
              iconSize: 30,
            ),
          ],
        )
      ],
    ),
  );
}

Widget _buildTextFormField(String hintText) {
  return TextFormField(

    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      filled: true,
      fillColor: Colors.amber.shade100.withOpacity(0.2)
    ),
  );
}

