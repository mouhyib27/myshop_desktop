import 'package:dashboard/business/controller/navigation_controller.dart';
import 'package:dashboard/widgets/layout/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => Row(
              children: [
                Expanded(
                    flex: navigationController.isCollapsed.isTrue ? 1 : 2,
                    child: const SidebarWidget()),
                Expanded(flex: 8, child: Container(color: Colors.red)),
                Expanded(flex: 2, child: Container(color: Colors.yellow)),
              ],
            )),
      ),
    );
  }
}
