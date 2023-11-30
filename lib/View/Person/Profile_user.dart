import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilUser extends StatefulWidget {
  const ProfilUser({super.key});

  @override
  State<ProfilUser> createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUser> {
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();

    // Pick an image.
    final XFile? imagePicker =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicker!.path);
    setState(() {});
  }

  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();

    // Pick an image.
    final XFile? imagePicker =
        await picker.pickImage(source: ImageSource.camera);
    image = File(imagePicker!.path);
    setState(() {});
  }

  // ImagePickerCtrl imagePickerCtrl = Get.put(ImagePickerCtrl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF0EDD4),
        title: Text(
          "PROFILE",
          style: TextStyle(
            color: Color(0xff675D50),
            fontSize: 30,
            fontFamily: 'ToonyLine',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Color(0xffF0EDD4),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          image != null
              ? Container(
                  height: 100,
                  width: 100,
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                  ))
              : Container(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Color(0xff988373),
                  child: const Text(
                    "Gallery",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {
                    await getImage();
                  }),
              SizedBox(width: 40),
              MaterialButton(
                  color: Color(0xff675D50),
                  child: const Text(
                    "Camera",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {
                    await getImageCamera();
                  })
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
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
                        decoration: InputDecoration(
                          hintText: "Date of Birth",
                          labelText: "Date of Birth",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
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
                        decoration: InputDecoration(
                          hintText: "Country",
                          labelText: "Country",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
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
                        decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
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
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                SizedBox(height: 10),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Vollkorn',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
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
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffECCDB4)),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xff675D50), width: 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
                  elevation: MaterialStateProperty.all<double>(5)),
              onPressed: () {},
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.black,
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
