// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? titleSize;
  final bool disable;

  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.titleSize,
    this.disable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? null : onPressed,
      child: Text(
        title,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue;
            }
            return Colors.green;
          },
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        // textStyle: MaterialStateProperty.all(
        //   TextStyle(
        //     fontSize: titleSize,
        //   ),
        // ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed))
              return TextStyle(
                fontSize: titleSize != null ? titleSize! * 2 : 28,
              );
            return TextStyle(fontSize: titleSize);
          },
        ),
      ),
    );
  }
}
