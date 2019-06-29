import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() {

    /*Firestore.instance.collection("usuarios") //banco de dados = colecao
    .document("pontuacao1") //Tabela = documento => id
    .setData({"Ricardo": "100", "teste":  "123"}); //dado
*/
    String mySt = "";
    Firestore db = Firestore.instance;
    void setData(){
    db.collection("usuarios")
    .document("-LiZDaGCQW-HHk7Mkf8z")
    .setData(
      {"nome" : "Ciclano de Tal", "idade":"35"}
    );
    }
    void addFire(){
    db.collection("usuarios")
    .add(
      {"nome": "Ricardo", "idade" : "23"}
    );}

    void test() async {
      DocumentReference ref = await db.collection("usuarios")
          .add(
        {"nome":"Novo usuário", "idade" : "05"}
      );
      print("código: "+ ref.documentID); //retornou: -LiZDaGCQW-HHk7Mkf8z
      mySt = ref.documentID;
    }

    void delete() {
      db.collection("usuarios")
          .document("-LiZK98dHSHlIWBH3GMH")
          .delete();
    }
    void recover() async {
      DocumentSnapshot snapshot = await db.collection("usuarios")
      .document("-LiZK98dHSHlIWBH3GMH").get();

      var user = snapshot.data;
      print("Usuario [nome: " + user["nome"] + ", idade: " +
          user["idade"] + "]");
    }

    void selectAll() async {
      QuerySnapshot querySnapshot = await db.collection("usuarios")
      .getDocuments();
      for (DocumentSnapshot s in querySnapshot.documents) {
        var user = s.data;
        print("Usuario [nome: " + user["nome"] + ", idade: " +
            user["idade"] + "]");
      }
    }

    //addFire();
    //test();
    //setData();
    //recover();
    //delete();
    selectAll();

  runApp(Home());
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}