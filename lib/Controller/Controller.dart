import 'package:get/get.dart';
import 'package:project_mobile/Model/User_pet.dart';
import 'package:http/http.dart' as http;

class ArtistController extends GetxController {
  var isDataLoaded = false.obs;
  var errorMessage = ''.obs;
  var usersPets = UsersArtist(data: []).obs;

  Future<void> getDataFromAPI() async {
    try {
      final Uri uri = Uri.parse(
          'https://jatinderji.github.io/users_pets_api/users_pets.json');
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = response.body;
        final users = usersPetsFromJson(jsonData);
        usersPets(users);
        isDataLoaded(true);
      } else {
        // Handle the error, e.g., set errorMessage or show a snackbar
        errorMessage('${response.statusCode}: ${response.reasonPhrase}');
      }
    } catch (e) {
      // Handle network or other exceptions
      errorMessage('An error occurred: $e');
    }
  }

  @override
  void onInit() {
    getDataFromAPI();
    super.onInit();
  }
}
