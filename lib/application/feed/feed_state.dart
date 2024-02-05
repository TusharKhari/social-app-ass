// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'feed_bloc.dart';

@immutable
abstract class FeedState {
  final List<Feedpost> feedsList;
  const FeedState({
    required this.feedsList,
  });
}

class FeedInitialState extends FeedState {
  const FeedInitialState({required super.feedsList});
}

class FeedSuccessState extends FeedState {
  const FeedSuccessState({required super.feedsList});
}

class FeedLoadingState extends FeedState {
  const FeedLoadingState({required super.feedsList});
}

class FeedErrorState extends FeedState {
  final String error;
  const FeedErrorState({required this.error, required super.feedsList});
}
