import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:project_mobile/Model/ArtistModel.dart';

class ApiService extends GetxController {
  static const String _baseUrl = 'https://reqres.in/api/users?page=2';

  RxList<ArtistModel> artistModels = RxList<ArtistModel>([]);

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final artistModel = ArtistModel.fromJson(jsonData);

        // Jika Anda ingin mengakses data Datum dari ArtistModel, Anda dapat melakukannya seperti ini:
        final data = artistModel.data;
        for (var datum in data) {
          print('ID: ${datum.id}');
          print('Email: ${datum.email}');
          print('Name: ${datum.firstName} ${datum.lastName}');
          print('Avatar: ${datum.avatar}');
        }

        artistModels.add(artistModel);
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('An error occurred: $e');
    }
  }
}
