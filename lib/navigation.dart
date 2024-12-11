import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tickr/core/constants/color.dart';
import 'package:tickr/core/constants/menu.dart';
import 'package:tickr/core/constants/size.dart';
import 'package:tickr/features/list/presentation/page/list.dart';
import 'package:tickr/features/note/presentation/page/note.dart';
import 'package:tickr/features/progress-tracker/presentation/page/progress.dart';
import 'package:tickr/features/task/presentation/page/task.dart';

class TNavigationBar extends StatefulWidget {
  const TNavigationBar({super.key});

  static const String routeName = '/';

  @override
  State<TNavigationBar> createState() => _TNavigationBarState();
}

class _TNavigationBarState extends State<TNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _screen = <Widget>[
    const TaskPage(),
    const NotePage(),
    const ListPage(),
    const ProgressTrackerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _screen.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: TSizes.p16,
          vertical: TSizes.p16,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white.withOpacity(0.2)),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.p12,
                vertical: TSizes.p2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    bottomNavItems.length,
                    (index) {
                      Menu menu = bottomNavItems[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(TSizes.p16),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? TColors.menuSelected
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                menu.icon,
                                color: _selectedIndex == index
                                    ? TColors.white
                                    : TColors.black,
                              ),
                              if (_selectedIndex != index)
                                Text(
                                  menu.text,
                                  style: TextStyle(
                                    color: _selectedIndex == index
                                        ? TColors.white
                                        : TColors.black,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
