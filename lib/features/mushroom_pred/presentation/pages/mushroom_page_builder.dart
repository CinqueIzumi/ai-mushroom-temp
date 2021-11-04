import 'package:ai_mushroom/features/mushroom_pred/presentation/widgets/select_card.dart';
import 'package:flutter/material.dart';

class MushroomPageBuilder extends StatefulWidget {
  const MushroomPageBuilder({Key? key}) : super(key: key);

  @override
  _MushroomPageBuilderState createState() => _MushroomPageBuilderState();
}

class _MushroomPageBuilderState extends State<MushroomPageBuilder> {
  // final customJson = {
  //   "cap-shape": ["x"],
  //   "cap-surface": ["s"],
  //   "cap-color": ["n"],
  //   "bruises": ["t"],
  //   "odor": ["p"],
  //   "gill-attachment": ["f"],
  //   "gill-spacing": ["c"],
  //   "gill-size": ["n"],
  //   "gill-color": ["k"],
  //   "stalk-shape": ["e"],
  //   "stalk-root": ["e"],
  //   "stalk-surface-above-ring": ["s"],
  //   "stalk-surface-below-ring": ["s"],
  //   "stalk-color-above-ring": ["w"],
  //   "stalk-color-below-ring": ["w"],
  //   "veil-type": ["p"],
  //   "veil-color": ["w"],
  //   "ring-number": ["o"],
  //   "ring-type": ["p"],
  //   "spore-print-color": ["k"],
  //   "population": ["s"],
  //   "habitat": ["u"]
  // };

  final SelectCard card1 = SelectCard(
    answers: const {
      "bell": "b",
      "conical": "c",
      "convex": "x",
      "flat": "f",
      "knobbed": "k",
      "sunken": "s",
    },
    question: 'What is the shape of the cap?',
    maxOptions: 6,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        card1,
        ElevatedButton(
          onPressed: () async {
            // BlocProvider.of<MushroomBloc>(context).add(RequestMushroomInfo(json: customJson));
            // print(
            //     'Results:\n${card1.text} - ${card2.text} - ${card3.text} - ${card4.text}');
            print('Result: ${card1.text}');
          },
          child: const Text('submit'),
        ),
      ],
    );
  }
}
