import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Menu {
  final IconData icon;
  final String text;

  Menu({required this.icon, required this.text});
}

List<Menu> bottomNavItems = [
  Menu(icon: Iconsax.task, text: 'Tasks'),
  Menu(icon: Iconsax.row_vertical, text: 'Notes'),
  Menu(icon: Iconsax.note, text: 'Lists'),
  Menu(icon: Iconsax.calendar, text: 'Progress'),
];
