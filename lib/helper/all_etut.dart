import '../model/etut.dart';

class DataHelper{
  static List<Etut> allAddedEtuts = [];

  static addEtut(Etut etut){
    allAddedEtuts.add(etut);
  }
}