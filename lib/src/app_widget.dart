import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/data/services/hp_service.dart';
import 'package:flutter_harry_potter/src/interactors/bloc/hp_bloc.dart';
import 'package:flutter_harry_potter/src/ui/pages/character_page.dart';
import 'package:flutter_harry_potter/src/ui/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      routes: {
        '/': (_) => BlocProvider(
              create: (_) => HpBloc(HpService())..add(GetAllCharactersEvent()),
              child: const HomePage(),
            ),
      },
      onGenerateRoute: ((settings) {
        if (settings.name == '/character') {
          final args = settings.arguments as Character;
          return MaterialPageRoute(builder: (context) {
            return CharacterPage(character: args);
          });
        }
        return null;
      }),
    );
  }
}
