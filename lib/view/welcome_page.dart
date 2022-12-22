import 'package:flutter/material.dart';
import 'package:widget_set/widget/button_widget.dart';
import 'package:widget_set/widget/link_button_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  'Welcome to my personal custom set widget!',
                ),
                buildButton(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 52),
            child: buildLinkButton(),
          ),
        ],
      ),
    );
  }

  Widget buildButton() {
    return ButtonWidget(
      defWidget: const Text(style: TextStyle(color: Colors.white), 'THIS IS AN EXAMPLE OF BUTTONS'),
      width: double.infinity,
      color: Colors.blue,
      onPress: () {},
    );
  }

  Widget buildLinkButton() {
    return LinkButtonWidget(
      text: 'Need a Help?',
      onPress: () {},
      buttonText: 'Yes',
    );
  }
}
