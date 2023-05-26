// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on PomodoroStoreBase, Store {
  late final _$timeInitAtom =
      Atom(name: 'PomodoroStoreBase.timeInit', context: context);

  @override
  bool get timeInit {
    _$timeInitAtom.reportRead();
    return super.timeInit;
  }

  @override
  set timeInit(bool value) {
    _$timeInitAtom.reportWrite(value, super.timeInit, () {
      super.timeInit = value;
    });
  }

  late final _$minAtom = Atom(name: 'PomodoroStoreBase.min', context: context);

  @override
  int get min {
    _$minAtom.reportRead();
    return super.min;
  }

  @override
  set min(int value) {
    _$minAtom.reportWrite(value, super.min, () {
      super.min = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: 'PomodoroStoreBase.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$timeOfficeAtom =
      Atom(name: 'PomodoroStoreBase.timeOffice', context: context);

  @override
  int get timeOffice {
    _$timeOfficeAtom.reportRead();
    return super.timeOffice;
  }

  @override
  set timeOffice(int value) {
    _$timeOfficeAtom.reportWrite(value, super.timeOffice, () {
      super.timeOffice = value;
    });
  }

  late final _$timeRestAtom =
      Atom(name: 'PomodoroStoreBase.timeRest', context: context);

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  late final _$typeIntervalAtom =
      Atom(name: 'PomodoroStoreBase.typeInterval', context: context);

  @override
  TypeInterval get typeInterval {
    _$typeIntervalAtom.reportRead();
    return super.typeInterval;
  }

  @override
  set typeInterval(TypeInterval value) {
    _$typeIntervalAtom.reportWrite(value, super.typeInterval, () {
      super.typeInterval = value;
    });
  }

  late final _$PomodoroStoreBaseActionController =
      ActionController(name: 'PomodoroStoreBase', context: context);

  @override
  void initTimer() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.initTimer');
    try {
      return super.initTimer();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopTimer() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.stopTimer');
    try {
      return super.stopTimer();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restartTimer() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.restartTimer');
    try {
      return super.restartTimer();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeOffice() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementTimeOffice');
    try {
      return super.incrementTimeOffice();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeOffice() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementTimeOffice');
    try {
      return super.decrementTimeOffice();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeRest() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.incrementTimeRest');
    try {
      return super.incrementTimeRest();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeRest() {
    final _$actionInfo = _$PomodoroStoreBaseActionController.startAction(
        name: 'PomodoroStoreBase.decrementTimeRest');
    try {
      return super.decrementTimeRest();
    } finally {
      _$PomodoroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timeInit: ${timeInit},
min: ${min},
seconds: ${seconds},
timeOffice: ${timeOffice},
timeRest: ${timeRest},
typeInterval: ${typeInterval}
    ''';
  }
}
