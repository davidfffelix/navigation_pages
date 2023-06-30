import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/twoPage', arguments: 'Teste').then(
              (value) {
                print(value);
              },
            );
          }, 
          child: const Text(
            'Ir para Segunda Page  ',
          ),
        ),
      ),
    );
  }
}
