import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_mobile/Controller/ImagePickerController.dart';

class ProfilUser extends StatefulWidget {
  const ProfilUser({super.key});

  @override
  State<ProfilUser> createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUser> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _dOBController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  final ImagePickerController _imagePickerController =
      Get.put(ImagePickerController());

  // ImagePickerCtrl imagePickerCtrl = Get.put(ImagePickerCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff01294D),
        title: Text(
          "EDIT PROFILE",
          style: TextStyle(
            color: Color(0xffFDFDFD),
            fontSize: 30,
            fontFamily: 'ToonyLine',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Color(0xffFDFDFD),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Obx(() {
            return _imagePickerController.image.value != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                      _imagePickerController.image.value!,
                      width: 250,
                      height: 250,
                    ),
                  )
                : Text('Pick Your Gorgeus Picture');
          }),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Color(0xff03AEC6),
                  child: const Text(
                    "Gallery",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {
                    _imagePickerController.getImage(ImageSource.gallery);
                  }),
              SizedBox(width: 40),
              MaterialButton(
                  color: Color(0xff01294D),
                  child: const Text(
                    "Camera",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {
                    _imagePickerController.getImage(ImageSource.camera);
                  })
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Date of Birth",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _dOBController,
                        decoration: InputDecoration(
                          hintText: "Date of Birth",
                          labelText: "Date of Birth",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _countryController,
                        decoration: InputDecoration(
                          hintText: "Country",
                          labelText: "Country",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          labelText: "Phone",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        controller: _genderController,
                        decoration: InputDecoration(
                          hintText: "Gender",
                          labelText: "gender",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Nama Harus Terisi!";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff03AEC6)),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff01294D), width: 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
                  elevation: MaterialStateProperty.all<double>(5)),
              onPressed: () {},
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Vollkorn',
                ),
              )),
          SizedBox(height: 10),
        ],
      )),
    );
  }
}
