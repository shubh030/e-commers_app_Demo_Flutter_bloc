import 'dart:convert';
import 'dart:developer';

import 'package:coditron_app/src/config/endpoints.dart';
import 'package:coditron_app/src/features/home/data/home_interface.dart';
import 'package:coditron_app/src/features/home/domain/club.dart';
import 'package:http/http.dart' as http;

class HomeRepository extends HomeInterface {
  static final _api = http.Client();

  @override
  Future<List<Club?>> getClubList() async {
    try {
      final url = Uri.parse(Endpoints.clubList);
      var response = await _api.get(url);
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        var data = jsonDecode(response.body);
        List<Club?> clubs =
            (data as List<dynamic>).map((e) => Club.fromJson(e)).toList();
        return clubs;
      }
    } catch (e) {
      log(e.toString());
    }
    return []; // Return an empty list if there's an error or no data
  }
}
