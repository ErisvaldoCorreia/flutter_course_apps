import 'package:flutter/material.dart';

class ContadorDePessoas extends StatefulWidget {
  const ContadorDePessoas({Key? key}) : super(key: key);

  @override
  State<ContadorDePessoas> createState() => _ContadorDePessoasState();
}

class _ContadorDePessoasState extends State<ContadorDePessoas> {
  int _counter = 0;
  String _message = 'Pode Entrar';

  void _changeCounter(int count) {
    setState(() {
      _counter += count;

      if (_counter < 0) {
        _message = 'Mundo Invertido?';
      } else if (_counter < 10) {
        _message = 'Pode Entrar';
      } else {
        _message = 'Super Lotado!';
        _counter = 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/cont-pessoas/grunge.jpg",
            fit: BoxFit.cover,
            height: 1000,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pessoas: $_counter',
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextButton(
                        child: const Text(
                          '+1',
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                          _changeCounter(1);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextButton(
                        child: const Text(
                          '-1',
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                          _changeCounter(-1);
                        },
                      ),
                    ),
                  ],
                ),
                Text(
                  _message,
                  style: const TextStyle(fontSize: 25, color: Colors.red),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
