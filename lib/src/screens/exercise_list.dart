import 'package:exercise_app/src/models/exercise_model.dart';
import 'package:flutter/material.dart';

class ExerciseListScreen extends StatelessWidget {
  ExerciseListScreen({super.key});

  List<ExerciseModel> exercisesList = [
    ExerciseModel(
        name: "Push-ups",
        description: "Upper body exercise. From plank position, lower and raise your body using arm strength.",
        imageUrl: "https://static.vecteezy.com/system/resources/thumbnails/009/665/170/small/boy-doing-push-up-exercise-on-a-floor-mat-vector-illustration-man-doing-push-ups-for-body-strength-and-muscle-buildup-bodybuilder-flat-character-design-doing-push-up-exercise-vector-free-png.png"),
    ExerciseModel(
        name: "Squats",
        description: "Lower body exercise. Bend knees and hips, then return to standing position.",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/3476/3476086.png"),
    ExerciseModel(
        name: "Lunges",
        description: "Leg exercise. Step forward, lower hips, then return to starting position.",
        imageUrl:"https://www.fitstream.com/images/bodyweight-training/bodyweight-exercises/lunge.png" ),
    ExerciseModel(
        name: "Plank",
        description: "Core exercise. Hold a push-up position, engaging core muscles.",
        imageUrl:"https://cdn-icons-png.flaticon.com/512/3043/3043240.png"),
    ExerciseModel(
        name: "Jumping Jacks",
        description: "Cardio exercise. Jump while spreading arms and legs, then return to starting position.",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/4721/4721189.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Exercise App"),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container()),
            Expanded(
              flex: 3,
              child: ListView.builder(
                  itemCount: exercisesList.length,
                  itemBuilder: (contest, index){
                    return ListTile(
                       title: Text(exercisesList[index].name),
                         leading: Image.network(exercisesList[index].imageUrl),
                         subtitle: Text(exercisesList[index].description, maxLines: 2,),
                    );
                  }),
            ),
          ],
        ),
    );
  }
}
