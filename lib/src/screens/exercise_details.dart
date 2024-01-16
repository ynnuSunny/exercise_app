import 'package:exercise_app/src/models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

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
        body: TimerWidget());
  }
}

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _seconds = 0;
  late Timer _timer;
  bool _isPaused = true;

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
      _isPaused = true;
      _seconds = 0;
    });
  }

  String _getTime(int second) {
    // int minute = 0;
    // if(second>=60 && second%60==0){
    //   minute = second~/60;
    // }
    return "${second ~/ 60} : ${second % 60}";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                child: Lottie.asset("assets/lottie/exercise.json"),
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              width: 150.0, // Adjust the width as needed
              height: 150.0, // Adjust the height as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  _getTime(_seconds),
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          ),
          // SizedBox(height: 20.0),
          Expanded(
            child: Row(
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
