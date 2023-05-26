import 'package:flutter/material.dart';
import 'package:flutter_pomodoro/app/controller/pomodoro_store.dart';

import 'package:provider/provider.dart';
import 'package:flutter_pomodoro/app/view/pomodoro_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (context) => PomodoroStore()),
      ],
      child: MaterialApp(
        title: 'Pomodoro',
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const PomodoroPage(),
      ),
    );
  }
}
