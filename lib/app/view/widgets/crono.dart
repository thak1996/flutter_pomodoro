import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/app/controller/pomodoro_store.dart';
import 'package:flutter_pomodoro/app/view/widgets/crono_button.dart';
import 'package:provider/provider.dart';

class Crono extends StatelessWidget {
  const Crono({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) {
        return Container(
          color: store.working() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.working() ? 'Hora de Trabalhar' : 'Hora de Descansar',
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                '${store.min.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 100, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.timeInit)
                    CronoButton(
                      icon: Icons.play_arrow,
                      text: 'Iniciar',
                      onPressed: store.initTimer,
                    ),
                  if (store.timeInit)
                    CronoButton(
                      icon: Icons.stop,
                      text: 'Parar',
                      onPressed: store.stopTimer,
                    ),
                  const SizedBox(width: 10),
                  CronoButton(
                    icon: Icons.refresh,
                    text: 'Reiniciar',
                    onPressed: store.restartTimer,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
