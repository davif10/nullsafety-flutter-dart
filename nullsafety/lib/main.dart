import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Null Safety",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nome = "Davi";
  int? idade;
  late double altura;
  double? peso;
  List<String>? lista;
  List<String?> lista2 = [null, "item1"];
  Map<String, int>? map;

  initState(){
    altura = 1.80;
    print("Lista 2 : ${lista2.first}");
    String item1 = lista2[1]!;
    print("Item 1: ${item1}");
    print("Soma: ${soma(primeiro: 1, segundo: 2)}");
  }

  //Com parâmetros nomeados
  int soma({required int primeiro, int segundo = 0}){
    return primeiro + segundo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Null Safety"),
      ),
      body: Column(
        children: [
          Text("Nome: $nome"),
          Text("Idade: $idade"),
          Text("Altura: $altura"),
          Text("Peso: ${peso ?? 75.7}"),
          Text("Lista: ${lista?.length}"),
          Text("Map: ${map}"),
        ],
      ),
    );
  }
}

