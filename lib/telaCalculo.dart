import 'package:flutter/material.dart';
import 'buttonDropCalculo.dart';
import 'tabelaDoCalculo.dart';

class TelaCalculo extends StatefulWidget {
  const TelaCalculo({Key? key}) : super(key: key);

  @override
  State<TelaCalculo> createState() => _TelaCalculoState();
}

class _TelaCalculoState extends State<TelaCalculo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: const [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ('Dias:'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ('Litros:'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ('KM:'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: ('Valor/Litros:'),
            ),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(width: 30),
            MyStatefulWidget(),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => PageTabelaCalculo()));
                },
                child: const Text('>',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                    )),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
