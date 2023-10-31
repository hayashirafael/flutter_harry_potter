part of 'hp_bloc.dart';

sealed class HpState {}

class HpInitial extends HpState {}

class HpLoading extends HpState {}

class HpSuccess extends HpState {
  final List<Character> list;

  HpSuccess(this.list);
}

class HpError extends HpState {
  final String message;

  HpError(this.message);
}
