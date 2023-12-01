import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerController extends GetxController {
  Rx<File?> image = Rx<File?>(null);

  Future<void> getImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      image.value = File(pickedImage.path);
    } else {
      print('No image selected.');
    }
  }
}
