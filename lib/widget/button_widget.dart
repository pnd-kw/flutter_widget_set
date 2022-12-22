import 'package:flutter/material.dart';
import 'package:progress_loading_button/progress_loading_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.defWidget,
      required this.width,
      required this.color,
      required this.onPress});

  final Widget defWidget;
  final double width;
  final Color color;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      /**/
      padding: const EdgeInsets.only(top: 32, right: 8, left: 8),
      child: LoadingButton(
        type: LoadingButtonType.Raised,
        defaultWidget: defWidget,
        width: width,
        borderRadius: 12.0,
        borderSide: BorderSide.none,
        color: color,
        height: 42,
        animate: true,
        loadingWidget: const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 2.0,
        ),
        onPressed: onPress,
      ),
    );
  }
}