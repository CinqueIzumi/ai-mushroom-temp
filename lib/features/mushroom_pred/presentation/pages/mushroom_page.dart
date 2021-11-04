import 'package:ai_mushroom/core/utils/colors.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/pages/mushroom_page_builder.dart';
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
      appBar: AppBar(
        title: const Text('Mushroom Questionnaire', style: TextStyle(color: Colors.black54),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<MushroomBloc, MushroomState>(
            builder: (context, state) {
              if (state is LoadedState) {
                return Text('Loading was successful, mushroom was: ${state.model.poisonous}');
              } else if (state is ErrorState) {
                return Text('Failure: ${state.failure}');
              }
              return const MushroomPageBuilder();
            },
          ),
        ),
      ),
    );
  }
}
