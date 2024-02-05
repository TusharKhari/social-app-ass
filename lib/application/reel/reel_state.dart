// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'reel_bloc.dart';

@immutable
abstract class ReelState {}

class ReelInitial extends ReelState {}

class ReelSuccessState extends ReelState {
  final ReelModel reelModel;
  ReelSuccessState({
    required this.reelModel,
  });
}

class ReelLoadingState extends ReelState {}

class ReelErrorState extends ReelState {
  final String error;
  ReelErrorState({
    required this.error,
  });
}
