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
    maxOptions: 4,
    question: 'Gill attachment',
    answers: const {
      "attached": "a",
      "descending": "d",
      "free": "f",
      "notched": "n",
    },
  );
  final SelectCard card7 = SelectCard(
    maxOptions: 3,
    question: 'Gill spacing',
    answers: const {
      "close": "c",
      "crowded": "w",
      "distant": "d",
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
    maxOptions: 7,
    question: 'Stalk root',
    answers: const {
      "bulbous": "b",
      "club": "c",
      "cup": "u",
      "equal": "e",
      "rhizomorphs": "z",
      "rooted": "r",
      "missing": "?",
    },
  );
  final SelectCard card12 = SelectCard(
    maxOptions: 4,
    question: 'Stalk surface above ring',
    answers: const {
      "fibrous": "f",
      "grooves": "g",
      "scaly": "y",
      "smooth": "s",
    },
  );
  final SelectCard card13 = SelectCard(
    maxOptions: 4,
    question: 'Stalk surface below ring',
    answers: const {
      "fibrous": "f",
      "grooves": "g",
      "scaly": "y",
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
    maxOptions: 8,
    question: 'Ring type',
    answers: const {
      "cobwebby": "c",
      "evanescent": "e",
      "flaring": "f",
      "large": "l",
      "none": "n",
      "pendant": "p",
      "sheathing": "s",
      "zone": "z",
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
          // BlocProvider.of<MushroomBloc>(context).add(RequestMushroomInfo(json: customJson));
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
