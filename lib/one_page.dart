import 'package:flutter/material.dart';

import 'two_page.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/twoPage',
            );
          },
          child: const Text(
            'Ir para Segunda Page',
          ),
        ),
      ),
    );
  }
}
