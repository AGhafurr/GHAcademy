import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './ClientController.dart';

class DatabaseController extends ClientController {
  Databases? databases;
  @override
  void onInit() {
    super.onInit();
// appwrite
    databases = Databases(client);
  }

  Future storeUserData(String username, String dob, String country,
      String email, String phone, String gender, String dance) async {
    Map<String, dynamic> userData = {
      'username': username,
      'Date_of_Birth': dob,
      'Country': country,
      'Email': email,
      'Phone': phone,
      'Gender': gender,
      'dance': dance
    };

    try {
      await databases!.createDocument(
        databaseId: "6562fc4e11f2e3d3642d",
        documentId: ID.unique(),
        collectionId: "6562fc6ea4c319be657e",
        data: userData,
        permissions: [
          Permission.read(Role.any()),
          Permission.update(Role.any()),
          Permission.delete(Role.any()),
        ],
      );
      print("DatabaseController:: storeUserData - Data stored successfully");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
