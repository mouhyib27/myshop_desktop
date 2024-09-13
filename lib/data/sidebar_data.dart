import 'package:dashboard/model/sidebar_model.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';


class SideBarData {
  final menu = [
    MenuModel(icon: FluentIcons.home_24_regular, title: 'Tableau de bord'),
    MenuModel(icon: FluentIcons.shopping_bag_24_regular, title: 'Mes Ventes'),
    MenuModel(icon: FluentIcons.notepad_24_regular, title: 'Mon Stock'),
    MenuModel(icon: FluentIcons.document_person_20_regular, title: 'Mes Clients'),
    MenuModel(icon: FluentIcons.settings_24_regular, title: 'Paramètres'),
  ];
}