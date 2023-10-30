part of 'hp_bloc.dart';

sealed class HpState {}

class HpInitial extends HpState {
  final List<Character> list;

  HpInitial(this.list);
}

class HpLoading extends HpState {
  final List<Character> list;

  HpLoading(this.list);
}

class HpSuccess extends HpState {
  final List<Character> list;

  HpSuccess(this.list);
}

class HpError extends HpState {
  final String message;

  HpError(this.message);
}
