import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/app/controller/pomodoro_store.dart';
import 'package:provider/provider.dart';

class InputTime extends StatelessWidget {
  const InputTime({
    super.key,
    this.padding,
    required this.title,
    required this.value,
    this.onPressedDec,
    this.onPressedInc,
  });

  final EdgeInsets? padding;
  final String title;
  final int value;
  final VoidCallback? onPressedDec;
  final VoidCallback? onPressedInc;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    IconData iconLeft = Icons.arrow_downward;
    IconData iconRight = Icons.arrow_upward;
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: const CircleBorder(),
      backgroundColor: store.working() ? Colors.red : Colors.green,
      padding: padding ?? const EdgeInsets.all(6),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(fontSize: 25)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onPressedDec,
              style: buttonStyle,
              child: Icon(iconLeft, color: Colors.white),
            ),
            Text('$value min', style: const TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: onPressedInc,
              style: buttonStyle,
              child: Icon(iconRight, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
