import 'package:flutter/material.dart';
import 'package:flutter_harry_potter/src/interactors/bloc/hp_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HpBloc>((bloc) => bloc.stream);
    HpState state = bloc.state;
    bool isSuccess = state is HpSuccess;
    bool isLoading = state is HpLoading;
    bool isError = state is HpError;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                bloc.add(GetAllCharacters());
              },
              child: const Text('Carregar'),
            ),
            if (isSuccess) const Text('sucessss'),
            if (isLoading) Center(child: const CircularProgressIndicator()),
            if (isError) const Text('sucessss'),
          ],
        ),
      ),
    );
  }
}
