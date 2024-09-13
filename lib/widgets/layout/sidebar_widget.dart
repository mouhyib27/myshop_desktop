import 'package:dashboard/business/controller/navigation_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/data/sidebar_data.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({super.key});

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  int selectedIndex = 0;
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final data = SideBarData();
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey,width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => Row(
                      mainAxisAlignment: controller.isCollapsed.isTrue
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: controller.isCollapsed.isTrue
                              ? Container()
                              : FlutterLogo(
                                  size: 50,
                                ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.isCollapsed.toggle();
                          },
                          icon: controller.isCollapsed.isTrue
                              ? Icon(
                                  FluentIcons.chevron_double_right_20_regular,
                                  color: Colors.grey.shade700,
                                )
                              : Icon(
                                  FluentIcons.chevron_double_left_20_regular,
                                  color: Colors.grey.shade700,
                                ),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: data.menu.length,
                  itemBuilder: (context, index) => buildMenuEntry(data, index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuEntry(SideBarData data, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: isSelected ? primaryColor : Colors.transparent),
      child: GestureDetector(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Obx(
          () => controller.isCollapsed.isTrue
              ? Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(data.menu[index].icon,
                      color: isSelected ? Colors.white : Colors.grey.shade700),
                )
              : Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: Icon(
                        data.menu[index].icon,
                        color: isSelected ? Colors.white : Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      data.menu[index].title,
                      style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? Colors.white : Colors.grey.shade700,
                        // fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
