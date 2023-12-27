import 'package:fitnest_x/constants/color_extension.dart';
import 'package:fitnest_x/view/widgets/round_button.dart';
import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: isChangeColor
              ? LinearGradient(
                  colors: TColor.primaryG,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            isChangeColor
                ? Image.asset(
                    'assets/img/FitnestX_white.png',
                    width: 150,
                    height: 50,
                  )
                : Image.asset(
                    'assets/img/FitnestX.png',
                    width: 150,
                    height: 50,
                  ),
            Text(
              'Everybody Can Train',
              style: TextStyle(
                color: TColor.gray,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundButton(
                  title: 'Get Started',
                  type: isChangeColor
                      ? RoundButtonType.textGradient
                      : RoundButtonType.bgGradient,
                  onPressed: () {
                    if (isChangeColor) {
                      // Go to next screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ),
                      );
                    } else {
                      // change color
                      setState(() {
                        isChangeColor = true;
                      });
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
