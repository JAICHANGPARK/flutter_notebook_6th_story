import 'package:flutter/foundation.dart';
import 'package:quiver/async.dart';

class TimerProvider with ChangeNotifier {
  Duration _pausedRemaining;
  CountdownTimer _countdownTimer;

  @override
  void dispose() {
    // TODO: implement dispose
    _countdownTimer?.cancel();
    super.dispose();
  }

  Duration get remaining {
    if (_pausedRemaining != null) {
      return _pausedRemaining;
    }
    return _countdownTimer?.isRunning == true ? _countdownTimer.remaining : Duration.zero;
  }

  String get remainingString {
    int totalSeconds = remaining.inSeconds;
    int minutes = (totalSeconds / 60).floor();
    int second = totalSeconds % 60;
    String minutesString = minutes > 9 ? minutes.toString() : "0$minutes";
    String secondsString = second > 9 ? second.toString() : "0$second";
    return '$minutesString:$secondsString';
  }

  start(Duration duration) {
    if (duration == null) {
      return;
    }
    reset(callNofityListeners: true);
    _countdownTimer = CountdownTimer(duration, Duration(seconds: 1));
    _countdownTimer.listen((event) => notifyListeners());
  }

  resume() {
    start(_pausedRemaining);
  }

  pause() {
    _pausedRemaining = remaining;
    _countdownTimer?.cancel();
    notifyListeners();
  }

  reset({bool callNofityListeners}) {
    _pausedRemaining = null;
    _countdownTimer?.cancel();

    if (callNofityListeners == true) {
      notifyListeners();
    }
  }
}
