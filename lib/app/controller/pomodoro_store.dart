import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = PomodoroStoreBase with _$PomodoroStore;

enum TypeInterval { working, resting }

abstract class PomodoroStoreBase with Store {
  @observable
  bool timeInit = false;

  @observable
  int min = 0;

  @observable
  int seconds = 0;

  @observable
  int timeOffice = 2;

  @observable
  int timeRest = 1;

  @observable
  TypeInterval typeInterval = TypeInterval.resting;

  Timer? crono;

  @action
  void initTimer() {
    timeInit = true;
    crono = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (min == 0 && seconds == 0) {
        _changeTypeInterval();
      } else if (seconds == 0) {
        seconds = 59;
        min--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stopTimer() {
    timeInit = false;
    crono?.cancel();
  }

  @action
  void restartTimer() {
    stopTimer();
    min = working() ? timeOffice : timeRest;
    seconds = 0;
  }

  @action
  void incrementTimeOffice() {
    timeOffice++;
    if (working()) {
      restartTimer();
    }
  }

  @action
  void decrementTimeOffice() {
    if (timeOffice > 1 && timeOffice < 60) {
      timeOffice--;
      if (working()) {
        restartTimer();
      }
    }
  }

  @action
  void incrementTimeRest() {
    timeRest++;
    if (resting()) {
      restartTimer();
    }
  }

  @action
  void decrementTimeRest() {
    if (timeRest > 1 && timeRest < 60) {
      timeRest--;
      if (resting()) {
        restartTimer();
      }
    }
  }

  bool working() => typeInterval == TypeInterval.working;
  bool resting() => typeInterval == TypeInterval.resting;

  void _changeTypeInterval() {
    if (working()) {
      typeInterval = TypeInterval.resting;
      min = timeRest;
    } else {
      typeInterval = TypeInterval.working;
      min = timeOffice;
    }
    seconds = 0;
  }
}
