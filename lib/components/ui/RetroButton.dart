import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

typedef VoidBoardCallback = void Function();

class RetroButton extends StatelessWidget {
  final Widget child;
  final VoidBoardCallback onPressed;
  final String text;
  final bool isDown;

  RetroButton({this.child, this.onPressed, this.text, this.isDown});
  @override
  Widget build(BuildContext context) {
    var button = Button95(
      onTap:
          (onPressed != null ? onPressed : () => print("No action on button")),
      child: text != null
          ? Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
              textScaleFactor: 1.5,
            )
          : child,
    );

    if (isDown == true) {
      return Elevation95(type: Elevation95Type.down, child: button);
    }

    return Elevation95(type: Elevation95Type.up, child:button);
  }
}
