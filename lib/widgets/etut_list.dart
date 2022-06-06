import 'package:etut_porgrami/helper/all_etut.dart';
import 'package:etut_porgrami/model/etut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EtutList extends StatelessWidget {
  const EtutList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Etut> allEtuts = DataHelper.allAddedEtuts;
    return allEtuts.length >0 ? ListView.builder(itemCount: allEtuts.length,itemBuilder: (context, index){
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Card(
          child: ListTile(
            title: Text(allEtuts[index].islemIsmi.toString(), style: TextStyle(fontSize: 20)),
            subtitle: Text(
                allEtuts[index].operatorTempoOrani.toString()
                    + " - " + allEtuts[index].verilecekPay.toString()
                    + " - " + allEtuts[index].sure.toString(),
                style: TextStyle(fontSize: 18)
            ),
          ),
        ),
      );
    }): Container(
      child: Center(child: Text("Lütfen etüt ekleyin", style: TextStyle(fontSize: 24),)),
    );
  }
}
