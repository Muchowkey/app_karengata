import 'package:app_karengata/src/features/core/cart/cart_screen.dart';
import 'package:app_karengata/src/features/core/dashboard.dart';
import 'package:app_karengata/src/features/core/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'src/features/core/categories/categories_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
          NavigationDestination(icon: Icon(LineAwesomeIcons.home), label: 'HOME'),
          NavigationDestination(icon: Icon(LineAwesomeIcons.list), label: 'CATEGORIES'),
          NavigationDestination(icon: Icon(LineAwesomeIcons.shopping_basket), label: 'CART'),
          NavigationDestination(icon: Icon(LineAwesomeIcons.user_1), label: 'ACCOUNT'),
        
        ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const DashboardScreen(), const CategoriesScreen(), const CartScreen(), const ProfileScreen()];
}