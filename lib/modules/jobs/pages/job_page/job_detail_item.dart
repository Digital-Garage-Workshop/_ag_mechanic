import 'package:flutter/material.dart';

class JobDetailItemData {
  const JobDetailItemData({
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  final IconData icon;
  final String subtitle;
  final String title;
}

class JobDetailItem extends StatelessWidget {
  const JobDetailItem({
    super.key,
    required this.data,
  });

  final JobDetailItemData data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(
        horizontal: 0,
        vertical: -4,
      ),
      contentPadding: const EdgeInsets.all(0),
      horizontalTitleGap: 0,
      leading: Icon(
        data.icon,
        color: Theme.of(context).primaryColor,
        size: 24,
      ),
      subtitle: Text(
        data.subtitle,
        // style: TextStyle(color: data.status.color),
      ),
      title: Text(
        data.title,
        // style: TextStyle(color: data.status.color),
      ),
    );
  }
}
