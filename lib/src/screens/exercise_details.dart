import 'package:exercise_app/src/models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ExerciseDetailsScreen extends StatefulWidget {
  ExerciseModel exerciseModel;
  ExerciseDetailsScreen({super.key, required this.exerciseModel});

  @override
  State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
}

class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Excercise Details"),
      ),
      body: TimerWidget()
    );
  }
}

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _seconds = 0;
  late Timer _timer;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (!_isPaused) {
        setState(() {
          _seconds++;
        });
      }
    });
  }

  void _startTimer() {
    setState(() {
      _isPaused = false;
    });
  }

  void _stopTimer() {
    setState(() {
      _isPaused = true;
    });
  }

  void _resetTimer() {
    setState(() {
      _seconds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Time: $_seconds seconds',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _startTimer,
                child: Text('Start'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: _stopTimer,
                child: Text('Pause'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: _resetTimer,
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}