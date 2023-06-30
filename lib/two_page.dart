// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  // final String args;

  const TwoPage({
    Key? key,
    // required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushNamed('/');
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('Retorno');
            }
          },
          child: Text(
            'Voltar para Primeira Page $args',
          ),
        ),
      ),
    );
  }
}
