import 'package:dashboard/model/sidebar_model.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';


class SideBarData {
  final menu = [
    MenuModel(icon: FluentIcons.home_24_filled, title: 'Tableau de bord'),
    MenuModel(icon: FluentIcons.shopping_bag_24_filled, title: 'Ventes'),
    MenuModel(icon: FluentIcons.notepad_24_filled, title: 'Gestion du stock'),
    MenuModel(icon: FluentIcons.document_person_20_filled, title: 'Gestion des clients'),
    MenuModel(icon: FluentIcons.settings_24_filled, title: 'Paramètres'),
  ];
}