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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: _controllerDias,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Dias:'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _controllerLitros,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Litros:',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _controllerKM,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  hintText: 'Escreva aqui!',
                  border: OutlineInputBorder(),
                  labelText: ('KM:'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _controllerValor,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Valor/Litros:',
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                MyStatefulWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 102,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: const BorderSide(
                            width: 2.0, color: Color.fromARGB(255, 12, 12, 12)),
                        shape: const CircleBorder(),
                        primary: const Color.fromARGB(255, 255, 254, 254),
                      ),
                      onPressed: () {
                        log(_controllerDias.text);
                        log(_controllerKM.text);
                        log(_controllerValor.text);
                        log(_controllerLitros.text);

                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => PageTabelaCalculo()));
                      },
                      child: const Text('SALVAR',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 12,
                          )),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: const BorderSide(
                            width: 2.0, color: Color.fromARGB(255, 12, 12, 12)),
                        shape: CircleBorder(),
                        primary: const Color.fromARGB(255, 255, 254, 254),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => PageTabelaCalculo()));
                      },
                      child: const Text('TABELA',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 12,
                          )),
                    ),
                  ),
                  // HOME //
                  Container(
                    height: 100,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: const BorderSide(
                            width: 2.0, color: Color.fromARGB(255, 12, 12, 12)),
                        shape: CircleBorder(),
                        primary: const Color.fromARGB(255, 255, 254, 254),
                      ),
                      onPressed: () {},
                      child: const Text('HOME',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                          )),
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 30),
        ]),
      ]),
    );
  }
}
