import 'package:ai_mushroom/core/utils/colors.dart';
import 'package:ai_mushroom/core/widgets/drawer_menu.dart';
import 'package:ai_mushroom/features/mushroom_pred/presentation/bloc/mushroom_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  await di.init();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<MushroomBloc>())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mushroom Predictor',
      theme: ThemeData(
        scaffoldBackgroundColor: kColorScaffold,
      ),
      home: const DrawerScaleIcon(
        initialState: 0,
      ),
    );
  }
}
