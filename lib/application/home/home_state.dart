// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final HomeModel homeModel;
  HomeSuccessState({
    required this.homeModel,
  });
}

class HomeErrorState extends HomeState {
  final String error;
  HomeErrorState({
    required this.error,
  });
}
