import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() {

    /*Firestore.instance.collection("usuarios") //banco de dados = colecao
    .document("pontuacao1") //Tabela = documento => id
    .setData({"Ricardo": "100", "teste":  "123"}); //dado
*/
    Firestore db = Firestore.instance;
    db.collection("usuarios")
    .document("COD-002")
    .setData(
      {"nome" : "Ciclano de Tal", "idade":"35"}
    );
    db.collection("usuarios")
        .document("COD-003")
        .setData(
        {"nome" : "Bertrano de Tal", "idade":"34"}
    );
    db.collection("usuarios")
    .add(
      {"nome": "Ricardo", "idade" : "23"}
    );

  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}