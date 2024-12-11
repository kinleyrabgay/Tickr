class TabItem {
  final String title;
  final int count;

  TabItem({
    required this.title,
    required this.count,
  });
}

final List<TabItem> taskTabs = [
  TabItem(
    title: 'All',
    count: 12,
  ),
  TabItem(
    title: 'In Progress',
    count: 2,
  ),
  TabItem(
    title: 'On Hold',
    count: 3,
  ),
  TabItem(
    title: 'Completed',
    count: 0,
  ),
];

final List<TabItem> listTabs = [
  TabItem(
    title: 'All',
    count: 12,
  ),
  TabItem(
    title: 'Bookmarked',
    count: 2,
  ),
  TabItem(
    title: 'Recent',
    count: 3,
  ),
];
