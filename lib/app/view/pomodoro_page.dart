import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/app/controller/pomodoro_store.dart';
import 'package:flutter_pomodoro/app/view/widgets/input_time.dart';
import 'package:flutter_pomodoro/app/view/widgets/crono.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Crono(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputTime(
                      title: 'Trabalho',
                      value: store.timeOffice,
                      onPressedDec: store.timeInit && store.working()
                          ? null
                          : store.decrementTimeOffice,
                      onPressedInc: store.timeInit && store.working()
                          ? null
                          : store.incrementTimeOffice,
                    ),
                    InputTime(
                      title: 'Descanso',
                      value: store.timeRest,
                      onPressedDec: store.timeInit && store.resting()
                          ? null
                          : store.decrementTimeRest,
                      onPressedInc: store.timeInit && store.resting()
                          ? null
                          : store.incrementTimeRest,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
