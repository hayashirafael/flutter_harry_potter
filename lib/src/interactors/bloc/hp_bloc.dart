import 'package:bloc/bloc.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/interactors/services/hp_service.dart';
part 'hp_event.dart';
part 'hp_state.dart';

class HpBloc extends Bloc<HpEvent, HpState> {
  final IHpService service;
  HpBloc(this.service) : super(HpInitial()) {
    on<GetAllCharactersEvent>(_getAllCharacters);
  }

  Future<void> _getAllCharacters(GetAllCharactersEvent event, Emitter<HpState> emit) async {
    emit(HpLoading());

    final data = await service.getAllCharacters();

    if (data.isNotEmpty) {
      emit(HpSuccess(data));
    } else {
      emit(HpError('Erro ao carregar a lista'));
    }
  }
}
