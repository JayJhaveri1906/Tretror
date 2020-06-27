import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

typedef VoidBoardCallback = void Function();

class RetroButton extends StatelessWidget {
  final Widget child;
  final VoidBoardCallback onPressed;
  final String text;

  RetroButton({this.child, this.onPressed, this.text});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Button95(
        onTap: (onPressed != null ? onPressed : () => print("No action on button")),
        child: text != null
            ? Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
                textScaleFactor: 1.5,
              )
            : child,
      ),
    );
  }
}
