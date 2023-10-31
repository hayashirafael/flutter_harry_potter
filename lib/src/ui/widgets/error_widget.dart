import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_harry_potter/src/interactors/bloc/hp_bloc.dart';

class AppErrorWidget extends StatelessWidget {
  final String errorMessage;

  const AppErrorWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(errorMessage),
          ElevatedButton(
            onPressed: () => context.read<HpBloc>().add(GetAllCharactersEvent()),
            child: const Text('tentar de novo'),
          ),
        ],
      ),
    );
  }
}
