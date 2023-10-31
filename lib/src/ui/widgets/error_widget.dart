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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/error_image.png',
              width: 150,
              height: 150,
            ), // Substitua pelo seu ícone de erro
            const SizedBox(height: 16),
            Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.read<HpBloc>().add(GetAllCharactersEvent()),
              child: const Text('Refresh'),
            ),
          ],
        ),
      ),
    );
  }
}
