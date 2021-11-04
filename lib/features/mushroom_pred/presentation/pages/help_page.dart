import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

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
                      'assets/help.png',
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  const Text(
                    'How to use',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'This app can be used to predict whether a mushroom is poisonous or edible.\n'
                        'This can be done by going to the \'Predict\' tab.\n'
                        'Within the predict tab, there are a set of questions which should be answered.\n'
                        'The answers for each question can be changed by clicking the \'>\' and \'<\' buttons.\n'
                        'Once you have answered all the questions, you can predict the type of mushroom by submitting the answers.'
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
