import 'package:febpractice/Controller/dashboard_controller.dart';
import 'package:febpractice/UI/Profile/profile.dart';
import 'package:febpractice/UI/stock_list/stock_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final DashBoardController controller = Get.put(DashBoardController());
  // ignore: prefer_final_fields
  List<Widget> _pages = <Widget>[
    StockList(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
          () => Center(child: _pages.elementAt(controller.selectedTab.value))),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedFontSize: 20,
          backgroundColor: const Color.fromRGBO(23, 29, 52, 1),
          selectedIconTheme: const IconThemeData(color: Colors.amberAccent, size: 40),
          selectedItemColor:  Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          currentIndex: controller.selectedTab.value,
          type: BottomNavigationBarType.fixed,
          onTap: (int? index) async {
            controller.selectedTab.value = index ?? 0;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit_outlined,
                size: 25,
              ),
              label: "Stocks",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                size: 25,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
