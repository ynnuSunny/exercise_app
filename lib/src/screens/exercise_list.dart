import 'package:flutter/material.dart';

class ExerciseListScreen extends StatelessWidget {
  const ExerciseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Exercise App"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (contest, index){
                return const ListTile(
                   title: Text("This is list title"),
                );
              }),
        ),
    );
  }
}
