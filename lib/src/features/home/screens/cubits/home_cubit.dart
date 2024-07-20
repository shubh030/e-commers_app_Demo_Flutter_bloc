import 'package:coditron_app/src/features/home/data/home_interface.dart';
import 'package:coditron_app/src/features/home/data/home_respository.dart';
import 'package:coditron_app/src/features/home/domain/club.dart';
import 'package:coditron_app/src/features/home/screens/cubits/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> implements HomeInterface {
  HomeCubit({required this.homeRepository}) : super(HomeInitialState());

  final HomeRepository homeRepository;

  @override
  Future<List<Club?>> getClubList() async {
    try {
      emit(HomeLoadingState());
      final data = await homeRepository.getClubList();
      if (data.isNotEmpty) {
        emit(HomeClubLoadedState(clubListData: data));
      }
    } catch (e) {
      emit(HomeClubFailedState(message: e.toString()));
    }
    return [];
  }
}
