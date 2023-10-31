import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_harry_potter/src/interactors/bloc/hp_bloc.dart';
import 'package:flutter_harry_potter/src/ui/widgets/character_list_widget.dart';
import 'package:flutter_harry_potter/src/ui/widgets/error_widget.dart';
import 'package:flutter_harry_potter/src/ui/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
      ),
      body: BlocBuilder<HpBloc, HpState>(
        builder: (context, state) {
          if (state is HpLoading) {
            return const LoadingWidget();
          }
          if (state is HpError) {
            return AppErrorWidget(
              errorMessage: state.message,
            );
          }
          if (state is HpSuccess) {
            return CharacterListWidget(
              characters: state.list,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
