import 'package:coditron_app/src/features/home/domain/club.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeClubLoadedState extends HomeState {
  const HomeClubLoadedState({required this.clubListData});
  final List<Club?> clubListData;
}

class HomeClubFailedState extends HomeState {
  const HomeClubFailedState({required this.message});
  final String message;
}
