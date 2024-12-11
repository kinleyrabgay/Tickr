import 'package:flutter/material.dart';
import 'package:tickr/core/constants/color.dart';
import 'package:tickr/core/constants/size.dart';
import 'package:tickr/core/constants/tabs.dart';

// final List<Map<String, dynamic>> tabs = [
//   {
//     'title': 'All',
//     'icon': Iconsax.clock,
//     'count': 12,
//   },
//   {
//     'title': 'In Progress',
//     'icon': Iconsax.clock,
//     'count': 2,
//   },
//   {
//     'title': 'On Hold',
//     'icon': Iconsax.clock,
//     'count': 3,
//   },
//   {
//     'title': 'Completed',
//     'icon': Iconsax.clock,
//     'count': 0,
//   }
// ];

class TCustomTabs extends StatefulWidget {
  final List<TabItem> tabs;

  const TCustomTabs({
    super.key,
    required this.tabs,
  });

  @override
  State<TCustomTabs> createState() => _TCustomTabsState();
}

class _TCustomTabsState extends State<TCustomTabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TSizes.p10),
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.tabs.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final tab = widget.tabs[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });

              // Handle tab tap
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.p16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: _currentIndex == index ? TColors.black : TColors.white,
              ),
              child: Row(
                children: [
                  Text(
                    tab.title,
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: _currentIndex == index
                              ? TColors.white
                              : TColors.darkGrey,
                        ),
                  ),
                  if (_currentIndex == index) ...[
                    const SizedBox(width: TSizes.p8),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: TColors.darkGrey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          '${tab.count}',
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: TColors.white,
                              ),
                        ),
                      ),
                    )
                  ]
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ), // Add spacing between tabs
      ),
    );
  }
}
