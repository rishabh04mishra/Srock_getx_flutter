import 'package:febpractice/data/repository/stock_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  final emailEditingController = TextEditingController();
  final nameEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
  final selectedTab = 0.obs;
  final adress = ''.obs;
  final email = ''.obs;
  final name = ''.obs;

  var data;
  final StockRepository _repo = StockRepository();
  final isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    stockData();
  }

  stockData() async {
    isLoading.value = true;
    var rawData = await _repo.fetchStock();
    data = rawData.data;
    isLoading.value = false;
  }

  addressSave() {
    isLoading.value = true;
    adress.value = addressEditingController.text;
    isLoading.value = false;
  }

  emailSave() {
    isLoading.value = true;
    email.value = emailEditingController.text;
    isLoading.value = false;
  }

  nameSave() {
    isLoading.value = true;
    name.value = nameEditingController.text;
    isLoading.value = false;
  }
}
