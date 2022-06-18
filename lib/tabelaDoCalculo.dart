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
        elevation: 0,
        title: Text('TABELA'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_right),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => TelaCalculo()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
