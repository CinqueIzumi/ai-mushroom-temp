import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MushroomPage extends StatefulWidget {
  const MushroomPage({Key? key}) : super(key: key);

  @override
  _MushroomPageState createState() => _MushroomPageState();
}

class _MushroomPageState extends State<MushroomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<MushroomBloc, MushroomState>(
          builder: (context, state) {
            if (state is LoadedState) {
              return const Text('Loading was successful');
            } else if (state is ErrorState) {
              return const Text('Something went wrong');
            }
            return const Text('Initial state');
          },
        ),
      ),
    );
  }
}