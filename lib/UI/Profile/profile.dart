import 'package:febpractice/Controller/dashboard_controller.dart';
import 'package:febpractice/UI/Profile/widget/edit_address.dart';
import 'package:febpractice/UI/common/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final DashBoardController controller = Get.find<DashBoardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(23, 23, 52, 1),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        //color: const Color.fromRGBO(23, 23, 52, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 35, 0, 25),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              color: const Color.fromRGBO(30, 30, 61, 1),
              child: Obx(
                () => controller.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: [
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Name",
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.nameEditingController.text,
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            trailing: TextButton(
                              child: Text("Edit"),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Edit Name",
                                  content: TextField(
                                    controller:
                                        controller.nameEditingController,
                                  ),
                                  onConfirm: () {
                                    controller.nameSave();
                                    Get.back();
                                  },
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 15,),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Email",
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.emailEditingController.text,
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            trailing: TextButton(
                              child: Text("Edit"),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Edit Email",
                                  content: TextField(
                                    controller:
                                        controller.emailEditingController,
                                  ),
                                  onConfirm: () {
                                    controller.emailSave();
                                    Get.back();
                                  },
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 15,),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Address",
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.addressEditingController.text,
                                style: CustomTextStyle.apptextStyle(),
                              ),
                            ),
                            trailing: TextButton(
                              child: const Text("Edit"),
                              onPressed: () {
                                Get.defaultDialog(
                                  title: "Edit address",
                                  content: TextField(
                                    controller:
                                        controller.addressEditingController,
                                  ),
                                  onConfirm: () {
                                    controller.addressSave();
                                    Get.back();
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
