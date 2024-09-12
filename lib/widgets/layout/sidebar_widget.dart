import 'package:flutter/material.dart';
import 'package:dashboard/data/sidebar_data.dart';
import '../../utils/constants.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({super.key});

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideBarData();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: Container(
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) => buildMenuEntry(data, index),
        ),
      ),
    );
  }

  Widget buildMenuEntry(SideBarData data, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: isSelected ? selectionColor : Colors.transparent),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
