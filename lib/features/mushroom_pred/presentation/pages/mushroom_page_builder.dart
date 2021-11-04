import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/widgets/select_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    question: 'Cap shape',
    maxOptions: 6,
  );
  final SelectCard card2 = SelectCard(
      maxOptions: 4,
      question: 'Cap surface',
      answers: const {
        "fibrous": "f",
        "grooves": "g",
        "scaly": "y",
        "smooth": "s",
      });
  final SelectCard card3 = SelectCard(
    maxOptions: 10,
    question: 'Cap color',
    answers: const {
      "brown": "n",
      "buff": "b",
      "cinnamon": "c",
      "gray": "g",
      "green": "r",
      "pink": "p",
      "purple": "u",
      "red": "e",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card4 = SelectCard(
    maxOptions: 2,
    question: 'Bruises',
    answers: const {
      "bruises": "t",
      "no": "f",
    },
  );
  final SelectCard card5 = SelectCard(
    maxOptions: 9,
    question: 'Odor',
    answers: const {
      "Almond": "a",
      "Anise": "l",
      "creosote": "c",
      "fishy": "y",
      "foul": "f",
      "musty": "m",
      "none": "n",
      "pungent": "p",
      "spicy": "s",
    },
  );
  final SelectCard card6 = SelectCard(
    maxOptions: 2,
    question: 'Gill attachment',
    answers: const {
      "attached": "a",
      "free": "f",
    },
  );
  final SelectCard card7 = SelectCard(
    maxOptions: 2,
    question: 'Gill spacing',
    answers: const {
      "close": "c",
      "crowded": "w",
    },
  );
  final SelectCard card8 = SelectCard(
    maxOptions: 2,
    question: 'Gill size',
    answers: const {
      "broad": "b",
      "narrow": "n",
    },
  );
  final SelectCard card9 = SelectCard(
    maxOptions: 12,
    question: 'Gill color',
    answers: const {
      "black": "k",
      "brown": "n",
      "buff": "b",
      "chocolate": "h",
      "gray": "g",
      "green": "r",
      "orange": "o",
      "pink": "p",
      "purple": "u",
      "red": "e",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card10 = SelectCard(
    maxOptions: 2,
    question: 'Stalk shape',
    answers: const {
      "enlarging": "e",
      "tapering": "t",
    },
  );
  final SelectCard card11 = SelectCard(
    maxOptions: 5,
    question: 'Stalk root',
    answers: const {
      "bulbous": "b",
      "club": "c",
      "equal": "e",
      "rooted": "r",
      "missing": "?",
    },
  );
  final SelectCard card12 = SelectCard(
    maxOptions: 4,
    question: 'Stalk surface above ring',
    answers: const {
      "fibrous": "f",
      "scaly": "y",
      "silky": "k",
      "smooth": "s",
    },
  );
  final SelectCard card13 = SelectCard(
    maxOptions: 4,
    question: 'Stalk surface below ring',
    answers: const {
      "fibrous": "f",
      "scaly": "y",
      "silky": "k",
      "smooth": "s",
    },
  );
  final SelectCard card14 = SelectCard(
    maxOptions: 9,
    question: 'Stalk color above ring',
    answers: const {
      "brown": "n",
      "buff": "b",
      "cinnamon": "c",
      "gray": "g",
      "orange": "o",
      "pink": "p",
      "red": "e",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card15 = SelectCard(
    maxOptions: 9,
    question: 'Stalk color below ring',
    answers: const {
      "brown": "n",
      "buff": "b",
      "cinnamon": "c",
      "gray": "g",
      "orange": "o",
      "pink": "p",
      "red": "e",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card16 = SelectCard(
    maxOptions: 1,
    question: 'Veil type',
    answers: const {
      "partial" : "p"
    },
  );
  final SelectCard card17 = SelectCard(
    maxOptions: 4,
    question: 'Veil color',
    answers: const {
      "brown": "n",
      "orange": "o",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card18 = SelectCard(
    maxOptions: 3,
    question: 'Number of rings',
    answers: const {
      "none": "n",
      "one": "o",
      "two": "t",
    },
  );
  final SelectCard card19 = SelectCard(
    maxOptions: 5,
    question: 'Ring type',
    answers: const {
      "evanescent": "e",
      "flaring": "f",
      "large": "l",
      "none": "n",
      "pendant": "p",
    },
  );
  final SelectCard card20 = SelectCard(
    maxOptions: 9,
    question: 'Spore print color',
    answers: const {
      "black": "k",
      "brown": "n",
      "buff": "b",
      "chocolate": "h",
      "green": "r",
      "orange": "o",
      "purple": "u",
      "white": "w",
      "yellow": "y",
    },
  );
  final SelectCard card21 = SelectCard(
    maxOptions: 6,
    question: 'Population',
    answers: const {
      "abundant": "a",
      "clustered": "c",
      "numerous": "n",
      "scattered": "s",
      "several": "v",
      "solitary": "y",
    },
  );
  final SelectCard card22 = SelectCard(
    maxOptions: 7,
    question: 'Habitat',
    answers: const {
      "grasses": "g",
      "leaves": "l",
      "meadows": "m",
      "paths": "p",
      "urban": "u",
      "waste": "w",
      "woods": "d",
    },
  );

  List<Widget> _buildColumnWidgets() {
    return [
      card1,
      card2,
      card3,
      card4,
      card5,
      card6,
      card7,
      card8,
      card9,
      card10,
      card11,
      card12,
      card13,
      card14,
      card15,
      card16,
      card17,
      card18,
      card19,
      card20,
      card21,
      card22,
      ElevatedButton(
        onPressed: () async {
          Map<String, dynamic> customJson = {};
          customJson['cap-shape'] = [card1.text];
          customJson['cap-surface'] = [card2.text];
          customJson['cap-color'] = [card3.text];
          customJson['bruises'] = [card4.text];
          customJson['odor'] = [card5.text];
          customJson['gill-attachment'] = [card6.text];
          customJson['gill-spacing'] = [card7.text];
          customJson['gill-size'] = [card8.text];
          customJson['gill-color'] = [card9.text];
          customJson['stalk-shape'] = [card10.text];
          customJson['stalk-root'] = [card11.text];
          customJson['stalk-surface-above-ring'] = [card12.text];
          customJson['stalk-surface-below-ring'] = [card13.text];
          customJson['stalk-color-above-ring'] = [card14.text];
          customJson['stalk-color-below-ring'] = [card15.text];
          customJson['veil-type'] = [card16.text];
          customJson['veil-color'] = [card17.text];
          customJson['ring-number'] = [card18.text];
          customJson['ring-type'] = [card19.text];
          customJson['spore-print-color'] = [card20.text];
          customJson['population'] = [card21.text];
          customJson['habitat'] = [card22.text];

          BlocProvider.of<MushroomBloc>(context).add(RequestMushroomInfo(json: customJson));
        },
        child: const Text('submit'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildColumnWidgets()
    );
  }
}
