import 'package:dashboard/widgets/layout/sidebar_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: SidebarWidget()),
        Expanded(flex: 8, child: Container(color: Colors.red)),
        Expanded(flex: 2, child: Container(color: Colors.yellow)),
      ],
    );
  }
}
