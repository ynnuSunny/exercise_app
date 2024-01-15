import 'package:exercise_app/src/models/exercise_model.dart';
import 'package:flutter/material.dart';

class ExerciseListScreen extends StatelessWidget {
  ExerciseListScreen({super.key});

  List<ExerciseModel> exercisesList = [
    ExerciseModel(name: "push-ups", description: "description", imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fpush-up_2548536&psig=AOvVaw0Y6hFRJPpqleRMVMSBl_Uz&ust=1705386224490000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCMC0yfTg3oMDFQAAAAAdAAAAABAI"),
    ExerciseModel(name: "push-ups", description: "description", imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fpush-up_2548536&psig=AOvVaw0Y6hFRJPpqleRMVMSBl_Uz&ust=1705386224490000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCMC0yfTg3oMDFQAAAAAdAAAAABAI"),
    ExerciseModel(name: "push-ups", description: "description", imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fpush-up_2548536&psig=AOvVaw0Y6hFRJPpqleRMVMSBl_Uz&ust=1705386224490000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCMC0yfTg3oMDFQAAAAAdAAAAABAI"),
    ExerciseModel(name: "push-ups", description: "description", imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fpush-up_2548536&psig=AOvVaw0Y6hFRJPpqleRMVMSBl_Uz&ust=1705386224490000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCMC0yfTg3oMDFQAAAAAdAAAAABAI"),
    ExerciseModel(name: "push-ups", description: "description", imageUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fpush-up_2548536&psig=AOvVaw0Y6hFRJPpqleRMVMSBl_Uz&ust=1705386224490000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCMC0yfTg3oMDFQAAAAAdAAAAABAI"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Exercise App"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: exercisesList.length,
              itemBuilder: (contest, index){
                return ListTile(
                   title: Text(exercisesList[index].name),
                );
              }),
        ),
    );
  }
}
