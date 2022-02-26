import 'package:febpractice/Controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAddress extends StatelessWidget {
  EditAddress({Key? key}) : super(key: key);
  final DashBoardController controller = Get.find<DashBoardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Edit Address"),
        ),
        body: ListTile(
          title: const Text("Email Address"),
          subtitle: TextField(controller: controller.addressEditingController),
        ));
  }
}
