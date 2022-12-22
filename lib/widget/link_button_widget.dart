import 'package:flutter/material.dart';

class LinkButtonWidget extends StatelessWidget {
  const LinkButtonWidget(
      {super.key,
      required this.text,
      required this.buttonText,
      required this.onPress});

  final String text;
  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: const TextStyle(fontSize: 14)),
          TextButton(
            onPressed: onPress,
            child: Text(
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              buttonText,
            ),
          ),
        ],
      ),
    );
  }
}