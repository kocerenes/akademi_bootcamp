class Etut{
  final String islemIsmi;
  final String operatorTempoOrani;
  final String verilecekPay;
  final String sure;

  Etut({required this.islemIsmi,required this.operatorTempoOrani,required this.verilecekPay,required this.sure});

  @override
  String toString() {
    return 'Lesson{name: $islemIsmi, letterValue: $operatorTempoOrani, creditValue: $verilecekPay, creditValue: $sure}';
  }
}