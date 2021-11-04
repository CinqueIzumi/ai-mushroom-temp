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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<MushroomBloc, MushroomState>(
            builder: (context, state) {
              if (state is LoadedState) {
                String message;
                if(state.model.poisonous) {
                  message = 'Poisonous!';
                } else {
                  message = 'Edible!';
                }
                return Center(
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
                        children: [
                          const Text('The mushroom you have entered data for is:'),
                          Text(message, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/search.png',
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Text('The accuracy of the prediction over more than 2000 different test samples was 99.82%.\n\nFor more information regarding the prediction, please visit the \'about\' screen')
                        ],
                      ),
                    ),
                  ),
                );
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
