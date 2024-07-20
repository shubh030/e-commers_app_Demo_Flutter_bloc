import 'package:coditron_app/src/features/home/domain/club.dart';

abstract class HomeInterface {
  const HomeInterface();

  Future<List<Club?>> getClubList();
}
