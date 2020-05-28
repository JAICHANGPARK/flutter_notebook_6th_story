import 'package:flutter/foundation.dart';
import 'package:quiver/async.dart';

class TimerProvider with ChangeNotifier{
  Duration _pausedRemaining;
  CountdownTimer _countdownTimer;
  
}