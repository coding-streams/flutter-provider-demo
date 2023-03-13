import 'package:flutter/material.dart';

class GetNameButton extends StatelessWidget {
  const GetNameButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    debugPrint("GetNameButton.build");

    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
