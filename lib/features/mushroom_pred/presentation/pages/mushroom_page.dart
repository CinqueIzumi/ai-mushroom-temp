import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MushroomPage extends StatefulWidget {
  const MushroomPage({Key? key}) : super(key: key);

  @override
  _MushroomPageState createState() => _MushroomPageState();
}

class _MushroomPageState extends State<MushroomPage> {

  final customJson = {
    "cap-shape": ["x"],
    "cap-surface": ["s"],
    "cap-color": ["n"],
    "bruises": ["t"],
    "odor": ["p"],
    "gill-attachment": ["f"],
    "gill-spacing": ["c"],
    "gill-size": ["n"],
    "gill-color": ["k"],
    "stalk-shape": ["e"],
    "stalk-root": ["e"],
    "stalk-surface-above-ring": ["s"],
    "stalk-surface-below-ring": ["s"],
    "stalk-color-above-ring": ["w"],
    "stalk-color-below-ring": ["w"],
    "veil-type": ["p"],
    "veil-color": ["w"],
    "ring-number": ["o"],
    "ring-type": ["p"],
    "spore-print-color": ["k"],
    "population": ["s"],
    "habitat": ["u"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<MushroomBloc, MushroomState>(
          builder: (context, state) {
            if (state is LoadedState) {
              return Text('Loading was successful, mushroom was: ${state.model.poisonous}');
            } else if (state is ErrorState) {
              return Text('Failure: ${state.failure}');
            }
            return Column(
              children: [
                const Text('Button pogu'),
                ElevatedButton(
                  onPressed: () async {
                    BlocProvider.of<MushroomBloc>(context).add(RequestMushroomInfo(json: customJson));
                  },
                  child: const Text('test'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
