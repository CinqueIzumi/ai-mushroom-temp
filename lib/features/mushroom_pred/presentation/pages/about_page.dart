import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/hello.png',
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ),
                    ),
                    const Text(
                      'Purpose / Context',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        'The purpose of this app is to support educative activities in the woods. '
                        'An example would be scouting members looking for different types of mushrooms outside.'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Prediction', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    const Text('The model which predicts the outcome is trained using a large dataset, with a total of 8.124 test samples. Based on the filled-in questionnaire, the AI will predict whether the found mushroom is Poisonous or Edible. This can be done by cross-referencing the features of the found mushroom to the sample data.'),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
