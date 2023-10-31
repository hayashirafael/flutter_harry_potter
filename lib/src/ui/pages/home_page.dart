import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_harry_potter/src/interactors/bloc/hp_bloc.dart';
import 'package:flutter_harry_potter/src/ui/widgets/error_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: BlocBuilder<HpBloc, HpState>(
        builder: (context, state) {
          if (state is HpLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is HpError) {
            return AppErrorWidget(errorMessage: state.message);
          }
          if (state is HpSuccess) {
            return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                final character = state.list[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('/character', arguments: character),
                  child: ListTile(
                    // leading: CircleAvatar(
                    //   child: character.image != '' ? Image.network(character.image!) : const SizedBox.shrink(),
                    // ),
                    title: Text(character.name),
                    subtitle: Text(character.house),
                  ),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
