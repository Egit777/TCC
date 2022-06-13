import 'dart:developer';

import 'package:flutter/material.dart';
import 'buttonDropCalculo.dart';
import 'tabelaDoCalculo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaCalculo(),
    );
  }
}

class TelaCalculo extends StatefulWidget {
  const TelaCalculo({Key? key}) : super(key: key);

  @override
  State<TelaCalculo> createState() => _TelaCalculoState();
}

class _TelaCalculoState extends State<TelaCalculo> {
  final TextEditingController _controllerDias = TextEditingController();
  final TextEditingController _controllerKM = TextEditingController();
  final TextEditingController _controllerLitros = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo de Gasto'),
      ),
      body: ListView(children: [
        Column(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: _controllerDias,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ('Dias:'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controllerLitros,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Litros:',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controllerKM,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ('KM:'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _controllerValor,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Valor/Litros:',
              ),
            ),
          ]),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyStatefulWidget(),
              Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 241, 0, 0),
                ),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 254, 254),
                  ),
                  onPressed: () {
                    log(_controllerDias.text);
                    log(_controllerKM.text);
                    log(_controllerValor.text);
                    log(_controllerLitros.text);

                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => PageTabelaCalculo()));
                  },
                  child: const Text('Salvar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ]),
      ]),
    );
  }
}
