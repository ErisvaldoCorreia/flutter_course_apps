import 'package:flutter/material.dart';

import 'src/contador_de_pessoas/contador_de_pessoas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      //Irei instanciar diretamente aqui o app que estiver trabalhando no curso
      //Ao final, criarei uma tela base inicial contendo links de chamada para
      //cada app
      home: ContadorDePessoas(),
    );
  }
}
