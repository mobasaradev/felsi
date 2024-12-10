import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkedText extends StatelessWidget {
  const LinkedText({
    super.key,
    required this.text,
    required this.btnText,
    this.onTap,
  });

  final String text;
  final String btnText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: context.textStyle.body12Medium,
        children: <TextSpan>[
          TextSpan(
            text: btnText,
            style: context.textStyle.body12Semibold
                .copyWith(color: context.color.primary),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
