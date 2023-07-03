import 'package:flutter/material.dart';

import 'widgets/custom_button_widgets.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          disable: false,
          onPressed: () {},
          title: 'Custom Btn',
          titleSize: 20,
          // onPressed: () {
          //   Navigator.of(context).pushNamed('/twoPage', arguments: 'Teste').then(
          //     (value) {
          //       print(value);
          //     },
          //   );
          // },
          // child: const Text(
          //   'Ir para Segunda Page  ',
          // ),
        ),
      ),
    );
  }
}
