import 'package:flutter/material.dart';
import 'telaCalculo.dart';

class PageTabelaCalculo extends StatefulWidget {
  const PageTabelaCalculo({Key? key}) : super(key: key);

  @override
  State<PageTabelaCalculo> createState() => _PageTabelaCalculoState();
}

class _PageTabelaCalculoState extends State<PageTabelaCalculo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 20,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: ElevatedButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => TelaCalculo()));
              },
              child: const Text('>',
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
