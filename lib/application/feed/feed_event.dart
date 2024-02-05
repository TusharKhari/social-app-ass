// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {}

class FeedInitialEvent extends FeedEvent {
 final int pageNo;
  FeedInitialEvent({
    required this.pageNo,
  });
}
