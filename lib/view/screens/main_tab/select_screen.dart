import 'package:fitnest_x/view/widgets/round_button.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
              title: "Workout Tracker",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const WorkoutTrackerView(),
                //   ),
                // );
              },
            ),
            const SizedBox(height: 15),
            RoundButton(
              title: "Meal Planner",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const MealPlannerView(),
                //   ),
                // );
              },
            ),
            const SizedBox(height: 15),
            RoundButton(
              title: "Sleep Tracker",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SleepTrackerView(),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
