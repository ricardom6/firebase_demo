import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() {

    /*Firestore.instance.collection("usuarios") //banco de dados = colecao
    .document("pontuacao1") //Tabela = documento => id
    .setData({"Ricardo": "100", "teste":  "123"}); //dado
*/
    Firestore db = Firestore.instance;
    db.collection("usuarios")
    .document("COD-001")
    .setData(
      {"nome" : "Fulano de Tal", "idade":"33"}
    );


  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}