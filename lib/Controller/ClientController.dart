import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  Client client = Client();
  @override
  void onInit() {
    super.onInit();
// appwrite
    const endPoint = "https://cloud.appwrite.io/v1";
    const projectID = "6562ecdd7c6a699cb379";
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);
  }
}
