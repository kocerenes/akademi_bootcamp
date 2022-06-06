import 'package:etut_porgrami/helper/all_etut.dart';
import 'package:etut_porgrami/model/etut.dart';
import 'package:etut_porgrami/widgets/etut_list.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({Key? key}) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String ProccessName = "";
  String OperatorTempoOrani = "";
  String VerilecekPay = "";
  String Sure = "";

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
            child: EtutList(),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
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
                    child: _buildTextFormField("Ortalama süre")
                ),
              ),
              IconButton(
                onPressed:(){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    var addedEtut = Etut(islemIsmi: ProccessName,operatorTempoOrani: OperatorTempoOrani,verilecekPay: VerilecekPay,sure: Sure);
                    DataHelper.addEtut(addedEtut);
                    setState(() {

                    });
                  }
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
      onSaved: (value){
        setState(() {
          if(hintText == "işlem adı"){
            ProccessName = value!;
          }else if(hintText == "operator tempo oranı"){
            OperatorTempoOrani = value!;
          }else if(hintText == "verilecek pay"){
            VerilecekPay = value!;
          }else if(hintText == "Ortalama süre"){
            Sure = value!;
          }
        });
      },

      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
          filled: true,
          fillColor: Colors.amber.shade100.withOpacity(0.2)
      ),
    );
  }

}





