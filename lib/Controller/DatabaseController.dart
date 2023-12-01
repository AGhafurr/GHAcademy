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

  Future storeUserName(Map map) async {
    try {
      await databases!.createDocument(
        databaseId: "6562fc4e11f2e3d3642d",
        documentId: ID.unique(),
        collectionId: "6562fc6ea4c319be657e",
        data: map,
        permissions: [
          Permission.read(Role.user("6562fe9125ba9b4496ee")),
          Permission.update(Role.user("6562fe9125ba9b4496ee")),
          Permission.delete(Role.user("6562fe9125ba9b4496ee")),
        ],
      );
      print("DatabaseController:: storeUserName $databases");
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
