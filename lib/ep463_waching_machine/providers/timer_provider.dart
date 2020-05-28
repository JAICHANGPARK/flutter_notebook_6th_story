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
}
